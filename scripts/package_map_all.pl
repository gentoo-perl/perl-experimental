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
use Gentoo::Perl::Distmap;
use Gentoo::Perl::Distmap::RecordSet;
my $optparse = optparse->new(
  argv => \@ARGV,
  help => sub { print help(); },
);

my $env  = env::gentoo::perl_experimental->new();
my $root = $env->root;

if ( $optparse->has_long_opt('root') ) {
  $root = Path::Class::Dir->new( $optparse->long_opt('root') );
}

my $size = 500;
my $scroll_time = '20m';

my $metadata = $root->subdir( 'metadata', 'perl' );
#my $distmap = $metadata->subdir('distmap');

#my (@json_files) = grep { not $_->is_dir and $_->basename =~ /\.json$/ } $distmap->children();
my (@json_files) = ($metadata->file('distmap.json'));

use JSON;
my $decoder = JSON->new()->utf8->relaxed;
my $encoder = JSON->new()->pretty->utf8->canonical;

my %lookup;

say "Init-ed";
{
  for my $file (@json_files) {
    say "* Reading " . $file->relative;
    my $dm = Gentoo::Perl::Distmap->load( file => $file );

    say "   Found " . ( scalar $dm->mapped_dists ) . " distributions";
    %lookup = ( %lookup, map { $_ => 1 } $dm->mapped_dists );
  }
}

my @dists = keys %lookup;

my $dtree;

my $seen = 0;

use List::MoreUtils qw( natatime );

my $it = natatime 500, @dists;

while ( my @dists_batch = $it->() ) {
  get_data_for(@dists_batch);
}
for my $package ( sort keys %{$dtree} ) {
  say "Sorting $package";
  $dtree->{$package} = [ sort { $b->{date} cmp $a->{date} } @{ $dtree->{$package} } ];
}

my $fh = $metadata->file('distinfo.json')->openw;
$fh->print( $encoder->encode($dtree) );

exit 0;

sub get_data_for {
  my (@items) = @_;
  my $search = {};
  $search->{query} = { constant_score => { filter => { terms => { distribution => [@items] } } } };
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
    'https://api.metacpan.org/release/_search?search_type=scan&scroll=' . $scroll_time . '&size=' . $size,
    {
      headers => { 'Accept-Encoding' => 'gzip', },
      content => $encoder->encode($search),
    }
  );

  my $results   = $decoder->decode( $results_string->{content} );
  my $scroll_id = $results->{_scroll_id};

  my $total_results = $results->{hits}->{total};

  say "Found: $total_results releases";
  $seen = 0;
  while (1) {
    my ( $result, $scroll ) = scroll($scroll_id);
    last unless scalar @{ $result->{hits}->{hits} };
    collate_resultset($result);
    $scroll_id = $scroll;
    say "Seen $seen of $total_results";
  }

}

sub scroll {
  my ($id) = @_;
  my $result = mcpan->ua->request(
    'GET',
    'https://api.metacpan.org/_search/scroll/?scroll=' . $scroll_time . '&size=' . $size . '&scroll_id=' . $id,
    { headers => { 'Accept-Encoding' => 'gzip', } }
  );

  if ( $result->{content} =~ /Server Error/ ) {
    require Data::Dump;
    Data::Dump::pp( { result => $result, size => $size, scroll_id => $id } );
    die;
  }
  else {
    #require Data::Dump;
    #Data::Dump::pp( { result => { %{$result}, content => '...' }, size => $size, scroll_id => $id } );
  }
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

