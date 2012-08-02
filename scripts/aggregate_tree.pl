#!/usr/bin/env perl

eval 'echo "Called with something not perl"' && exit 1    # Non-Perl protection.
  if 0;

use 5.12.2;
use strict;
use warnings;

use FindBin;
use lib "$FindBin::Bin/lib";
use env::gentoo::perl_experimental;
use optparse;
use utf8;
use Data::Dump qw( pp );
use Gentoo::Overlay;
use Gentoo::Perl::Distmap;
use Gentoo::Perl::Distmap::RecordSet;
# FILENAME: aggregate_tree.pl
# CREATED: 29/02/12 07:37:54 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: Connect all the cpan id's from the metadata.xml

use XML::Smart;

my ( $env, $cat );
my $dm = Gentoo::Perl::Distmap->new();

main();

sub main {
  $env = env::gentoo::perl_experimental->new();
  my $opts = optparse->new(
    argv => \@ARGV,
    help => sub { print <DATA>; return },
  );
  my $tree;

  if ( $opts->long_opts->{'from-ini'} ) {
    require Gentoo::Overlay::Group::INI;
    $tree = Gentoo::Overlay::Group::INI->load_named('aggregate_tree')->overlay_group;
  }
  else {
    require Gentoo::Overlay::Group;
    $tree = Gentoo::Overlay::Group->new();
    $tree->add_overlay( set_root( $opts->long_opts->{root} ));
  }

  my $dest = open_output( $opts->long_opts->{output} );

  $|++;
  $tree->iterate(
    'packages' => \&handle_package
  );

  $dest->print( make_format( $opts->long_opts->{format} ) );

}

sub set_root {
  my ($root) = @_;
  return $env->root unless defined $root;
  require Path::Class::Dir;
  return Path::Class::Dir->new($root);
}

sub open_output {
  my ($output) = @_;
  return \*STDOUT if not defined $output;
  return \*STDOUT if $output eq '-';
  require Path::Class::File;
  my $file = Path::Class::File->new($output)->absolute();
  return $file->openw( iomode => ':utf8' );
}

sub make_format {
  my ($format) = @_;
  $format ||= 'JSON';
  if ( $format eq 'JSON' ) {
    goto &make_format_json;
  }
  if ( $format eq 'distlist' ) {
    goto &make_format_distlist;
  }
  die "Unknown format type " . $format;
}

sub make_format_json {
  return $dm->save( string =>, );
}

sub make_format_distlist {
  return join qq{\n}, $dm->mapped_dists;
}

sub handle_package {
  my ( $self, $c ) = @_;
  my $CP      = $c->{category_name} . '/' . $c->{package_name};
  my $xmlfile = $c->{package}->path->file('metadata.xml');
  if ( not -e $xmlfile ) {
    warn "\e[31mNo metadata.xml for $CP\e[0m\n";
    return;
  }
  if ( not $cat or $c->{category_name} ne $cat ) {
    *STDERR->print( "\nProcessing " . $c->{category_name} . " :" );
    $cat = $c->{category_name};
  }
  *STDERR->print(".");
  my $XML = XML::Smart->new( $xmlfile->absolute()->stringify() );
  if ( not exists $XML->{pkgmetadata} ) {
    warn "\e[31m<pkgmetadata> missing in $xmlfile\e[0m\n";
    return;
  }
  if ( not exists $XML->{pkgmetadata}->{upstream} ) {

    # warn "<pkgmetadata>/<upstream> missing in $xmlfile\n";
    return;
  }
  if ( not exists $XML->{pkgmetadata}->{upstream}->{'remote-id'} ) {

    # warn "<pkgmetadata>/<upstream>/<remote-id> missing in $xmlfile\n";
    return;
  }
  for my $remote ( @{ $XML->{pkgmetadata}->{upstream}->{'remote-id'} } ) {

    next if not exists $remote->{type};
    next unless $remote->{type} eq 'cpan';

    my $upstream = $remote->content();

    my $record   = {
      category        => $c->{category_name},
      package         => $c->{package_name},
      repository      => $c->{overlay_name},
      distribution    => $upstream,
    };
    $c->{package}->iterate(
      ebuilds => sub {
        my ( $self, $d ) = @_;
        my $version = $d->{ebuild_name};
        my $p       = $c->{package_name};
        $version =~ s/\.ebuild$//;
        $version =~ s/^\Q${p}\E-//;
        $dm->add_version(
            %{$record},
            version => $version,
        );
      }
    );

    *STDERR->print("\e[32m $CP -> $upstream\e[0m ");
  }

}
0;

__DATA__

This script scrapes the perl repository and finds all the metadata.xml files
  and makes a mapping file connecting categories to upstream dists.

Usage:

  aggregate_tree.pl

  By default uses the perl-experimental overlay as a working dir, and emits JSON to stdout

  aggregate_tree.pl 
  
      --root="/path/to/some/root"

      Specifiy another root to scan ( ie: /usr/portage )
  
      --format=JSON     # Emit JSON  ( Default )
      --format=distlist # Emit a list of CPAN Dist Names

      --output=-                # Write to standard output ( Default ) 
      --output="/path/to/file"  # Write to the specified file


