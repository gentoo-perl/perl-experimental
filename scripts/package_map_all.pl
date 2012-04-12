#!/usr/bin/env perl

eval 'echo "Called with something not perl"' && exit 1    # Non-Perl protection.
  if 0;

use 5.12.2;
use strict;
use warnings;

use FindBin;
use lib "$FindBin::Bin/lib";

use env::gentoo::perl_experimental;
use metacpan qw( mcpan );
use Try::Tiny;
use utf8;
use optparse;
use Path::Class::Dir;
my $optparse = optparse->new(
  argv => \@ARGV,
  help => sub { print help(); },
);

my $env  = env::gentoo::perl_experimental->new();
my $root = $env->root;

if ( $optparse->has_long_opt('root') ) {
  $root = Path::Class::Dir->new( $optparse->long_opt('root') );
}

my $size = 1000;

my $metadata = $root->subdir( 'metadata', 'perl' );
my $distmap = $metadata->subdir('distmap');

my (@json_files) = grep { not $_->is_dir and $_->basename =~ /\.json$/ } $distmap->children();

use JSON;
my $decoder = JSON->new()->utf8->relaxed;
my $encoder = JSON->new()->pretty->utf8->canonical;

my %lookup;

{
  for my $file (@json_files) {
    say "* Reading " . $file->relative;
    my $hash = $decoder->decode( scalar $file->slurp );
    say "  Found " . ( scalar keys %{$hash} ) . " repositories indexed in " . $file->relative;
    for my $repo ( keys %{$hash} ) {
      my $nodes = $hash->{$repo};
      say "   ${repo}: " . ( scalar keys %{$nodes} ) . " distributions";
      $lookup{$_}++ for keys %{$nodes};
    }
  }
  say "* Found: " . ( scalar keys %lookup ) . " unique distributions";
  my (@dup) = grep { $lookup{$_} > 1 } keys %lookup;
  if ( @dup > 0 ) {
    say "   " . ( scalar @dup ) . " items listed more than once";
    say "    > $_" for @dup;
  }
}

my @dists = keys %lookup;

my $search = {};
$search->{query} = { constant_score => { filter => { terms => { distribution => [@dists] } } } };
$search->{sort}   = [ { 'date' => 'desc', }, ];
$search->{size}   = $size;
$search->{fields} = [
  qw(
    abstract
    archive
    author
    authorized
    date
    distribution
    download_url
    license
    maturity
    name
    status
    version
    )
];

$ENV{WWW_MECH_NOCACHE} = 1;

my $results_string = mcpan->ua->request(
  'POST',
  mcpan->base_url . 'release/_search?search_type=scan&scroll=30s&size=' . $size,
  {
    headers => { 'Accept-Encoding' => 'gzip', },
    content => $encoder->encode($search),
  }
);

say $results_string->{content};

my $results   = $decoder->decode( $results_string->{content} );
my $scroll_id = $results->{_scroll_id};

my $total_results = $results->{hits}->{total};

say "Found: $total_results releases";

my $dtree;
my $seen = 0;

while (1) {
  my ( $result, $scroll ) = scroll($scroll_id);
  last unless scalar @{ $result->{hits}->{hits} };
  collate_resultset($result);
  $scroll_id = $scroll;
  say "Seen $seen of $total_results";
}

for my $package ( sort keys %{$dtree} ) {
  say "Sorting $package";
  $dtree->{$package} = [ sort { $b->{date} cmp $a->{date} } @{ $dtree->{$package} } ];
}

my $fh = $metadata->file('distinfo.json')->openw;
$fh->print( $encoder->encode($dtree) );

exit 0;

sub scroll {
  my ($id) = @_;
  my $result = mcpan->ua->request(
    'GET',
    'http://api.metacpan.org/_search/scroll/?scroll=30s&size=' . $size . '&scroll_id=' . $id,
    { headers => { 'Accept-Encoding' => 'gzip', } }
  );

  my $data = $decoder->decode( $result->{content} );
  return $data, $data->{_scroll_id};
}

sub collate_resultset {
  my ($results) = @_;
  for my $result ( @{ $results->{hits}->{hits} } ) {
    if ( not $result->{fields} ) {
      $result->{fields} = $result->{_source};
    }
    delete $result->{fields}->{dependency} if exists $result->{fields}->{dependency};
    my $fields = $result->{fields};

    my $cversion = $fields->{name};
    my $cdistrib = $fields->{distribution};
    $cversion =~ s/^${cdistrib}-//;
    $seen++;
    $fields->{version_canon}  = $cversion;
    $fields->{version_gentoo} = scalar try { gv( $cversion, { lax => 1 } ) };
    $fields->{archive_canon}  = $fields->{author} . '/' . $fields->{archive};

    #say $fields->{author} . '/' . $fields->{archive};
    $dtree->{$cdistrib} = [] unless exists $dtree->{$cdistrib};
    push @{ $dtree->{$cdistrib} }, $fields;
  }
}

# Utils

sub gv { require Gentoo::PerlMod::Version; goto \&Gentoo::PerlMod::Version::gentooize_version }

sub help {
  return <<"EOF";
package_map_all.pl

USAGE:

  package_map_all.pl [--help]

  ie:

  package_map_all.pl

    --root=/usr/portage
                  # Specify the metadata is in /usr/portage/metadata/perl/distmap/*
                  # And to emit /usr/portage/metadata/perl/distinfo.json
    --help        Show this message

EOF

}

