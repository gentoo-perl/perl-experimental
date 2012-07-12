#!/usr/bin/env perl

eval 'echo "Called with something not perl"' && exit 1    # Non-Perl protection.
  if 0;

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/lib";
use XML::Smart;
use File::Slurp;
use Data::Dumper;
use CHI;
use WWW::Mechanize::Cached;
use HTTP::Tiny::Mech;
use MetaCPAN::API;
use Gentoo::Ebuild::ParseVariables qw(gentoo_ebuild_var);
use CPAN::DistnameInfo;
use Path::Class;
use PortageXS;

use metacpan qw( mcpan );
my $mcpan = mcpan;
#my $mcpan = MetaCPAN::API->new(
#    ua => HTTP::Tiny::Mech->new(
#        mechua => WWW::Mechanize::Cached->new(
#            cache => CHI->new(
#                driver   => 'File',
#                root_dir => '/tmp/metacpan-cache',
#            ),
#        ),
#    ),
#);

#my $portdir = '/var/gentoo/portage';
my $portdir = PortageXS->new->getPortdir();
my $dtd     = $portdir . "/metadata/dtd/metadata.dtd";

while (@ARGV) {
    my $md = shift @ARGV;
    #print "$md\n";
    my $dist;
    my %cpan_modules;
    my $metadata_old = read_file($md, binmode => ':utf8');
    my $indent_level = indent($metadata_old);
    my $metadata_new;
    my $XML = XML::Smart->new($metadata_old);

    #$XML->apply_dtd($dtd);
    if ( check_remote_id($XML)
        and not $XML->{pkgmetadata}->{upstream}
        ->{'remote-id'}( 'type', 'eq', 'cpan' )->null() )
    {
        $dist =
          $XML->{pkgmetadata}->{upstream}
          ->{'remote-id'}( 'type', 'eq', 'cpan' )->content();
    }
    my $dist_src_uri = distname($md);
    my $cpan_dist_failure;
    if ( defined $dist and $dist ne '' and $dist ne $dist_src_uri ) {
        print "Dist is wrong!\n";
        print "'$dist' vs '$dist_src_uri'\n";
        $cpan_dist_failure = 1;
        $dist              = $dist_src_uri;
    } elsif ( not defined $dist ) {
	$dist = $dist_src_uri;
    }

    my $result = $mcpan->post(
        'module/_search',
        {
            "fields" => [ "module.name", "release" ],
            "query"  => {
                "constant_score" => {
                    "filter" => {
                        "and" => [
                            { "term" => { "distribution"      => "$dist" } },
                            { "term" => { "status"            => "latest" } },
                            { "term" => { "mime"              => "text/x-script.perl-module" } },
                            { "term" => { "indexed"           => "true" } },
                            { "term" => { "module.authorized" => "true" } }
                        ]
                    }
                }
            },
            "size" => 990
        }
    );

    return unless $result->{'hits'}->{'hits'};
    for my $file ( @{ $result->{'hits'}->{'hits'} } ) {
        if ( ref $file->{'fields'}->{'module.name'} eq 'ARRAY' ) {
            for my $module ( @{ $file->{'fields'}->{'module.name'} } ) {
                $cpan_modules{$module} += 2;
            }
        }
        else {
            $cpan_modules{ $file->{'fields'}->{'module.name'} } += 2;
        }
    }
    drop_former_modules($XML, \%cpan_modules, $cpan_dist_failure);

    if ( defined $dist and $dist ne '' ) {
        if ( $XML->{pkgmetadata}->{upstream}
            ->{'remote-id'}( 'type', 'eq', 'cpan' )->null() )
        {
            push @{ $XML->{pkgmetadata}->{upstream}->{"remote-id"} },
              { type => 'cpan', content => "$dist" };
        }
        else {
            if ( $XML->{pkgmetadata}->{upstream}
                ->{'remote-id'}( 'type', 'eq', 'cpan' )->content() ne $dist )
            {
                push @{ $XML->{pkgmetadata}->{upstream}->{"remote-id"} },
                  { type => 'cpan', content => "$dist" };
            }
        }
    }

    for my $module ( sort keys %cpan_modules ) {

        print "Removed : $module\n" if $cpan_modules{$module} == 1;
        print "Added   : $module\n" if $cpan_modules{$module} == 2;

        push(
            @{ $XML->{pkgmetadata}->{upstream}->{'remote-id'} },
            { type => 'cpan-module', content => "$module" }
        ) if $cpan_modules{$module} >= 2;
    }
    $metadata_new = '<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE pkgmetadata SYSTEM "http://www.gentoo.org/dtd/metadata.dtd">
';
    $metadata_new .= $XML->data( nometagen => 1, nodtd => 1, noheader => 1 );
    $metadata_new =~ s/\n\Z//sm;

    my $metadata_newnew;
    for my $line ( split /\n/, $metadata_new ) {
	if ( $line =~ m,^[ ]{4}(?=\<), ) {
	    $line =~ s,^[ ]{4}(?=\<),$indent_level->{'second'},mseg;
	} elsif ( $line =~ m,^[ ]{2}(?=\<), ) {
	$line =~ s,^[ ]{2}(?=\<),$indent_level->{'first'},mseg;
	}
	$metadata_newnew .= $line . "\n";
    }

    write_file( "$md.new",{binmode => ':utf8'}, $metadata_newnew );
    system("diff -ur $md $md.new");
    rename "$md.new", "$md" or die "Can't rename $md.new: $!\n";

}

sub indent {
    my $metadata = shift;
    my %tags;
    foreach my $tag (qw( herd maintainer longdescription use upstream )) {
        $tags{"first"} = $1 if $metadata =~ m,.*?^([ \t]*)\<$tag,ms;
    }
    foreach my $tag (qw( remote-id name email )) {
        $tags{"second"} = $1 if $metadata =~ m,.*?^([ \t]*)\<$tag,ms;
    }
    $tags{"second"} = "$tags{'first'}$tags{'first'}"
      if not exists $tags{"second"};
    return \%tags;
}

sub distname {
    my $fd = shift;
    $fd =~ s,metadata.xml,*.ebuild,;
    my @ebuilds = glob "$fd";
#    @ebuilds = reverse @ebuilds;
    foreach my $ebuild ( reverse @ebuilds) {
        $ebuild = file($ebuild)->absolute;
        my $ebuild_hash = gentoo_ebuild_var(
            "$ebuild",
	    #[qw( MY_PN SRC_URI MY_PV MODULE_VERSION MODULE_A )],
            [qw( SRC_URI )],
	    #file($ebuild)->absolute->dir->parent->parent
	    $portdir
        );
	next unless $ebuild_hash->{'SRC_URI'};
        my @src_uri = split /\s/, $ebuild_hash->{'SRC_URI'};
        foreach my $uri (@src_uri) {

            next unless $uri =~ m,authors/id,;
            return CPAN::DistnameInfo->new("$uri")->dist();
        }
	print Dumper $ebuild_hash;
    }
}

sub check_remote_id {
    my $xml = shift;
    if ( $xml->{pkgmetadata}->null() ) {
        print "metadata.xml: pkgmetadata does not exist\n";
        return;
    }
    if ( $xml->{pkgmetadata}->{upstream}->null() ) {
        print "metadata.xml: upstream does not exist\n";
        return;
    }
    if ( $xml->{pkgmetadata}->{upstream}->{'remote-id'}->null() ) {
        print "metadata.xml: remote-id does not exist\n";
        return;
    }
    return 1;
}

sub drop_former_modules {
    my $xml = shift;
    my $cpan_modules = shift;
    my $cpan_dist_failure = shift;
    return unless check_remote_id($xml);
    for my $remote ( @{ $xml->{pkgmetadata}->{upstream}->{'remote-id'} } ) {

        #     print "Remote: $remote\n";
        next unless exists $remote->{type};
        if ( $remote->{type} eq 'cpan-module' ) {
            $cpan_modules->{ $remote->content() } += 1;
            undef $remote;
        }
        elsif ( $remote->{type} eq 'cpan' ) {
            if ($cpan_dist_failure) {
                print "undef cpan\n";

                undef $remote;
                undef $xml->{pkgmetadata}->{upstream};
            }
        }
    }
}
