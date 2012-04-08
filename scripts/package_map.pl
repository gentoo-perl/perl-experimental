#!/usr/bin/env perl

eval 'echo "Called with something not perl"' && exit 1    # Non-Perl protection.
  if 0;

use 5.14.2;
use strict;
use warnings;

use FindBin;
use lib "$FindBin::Bin/lib";

use env::gentoo::perl_experimental;
use metacpan qw( mcpan );
use Try::Tiny;
use optparse;

# FILENAME: pvlist.pl
# CREATED: 16/10/11 20:16:03 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: Show dist metadata for interesting perl dists

# DEPENDENCIES:
#
# * MetaCPAN::API
# * CHI
# * WWW::Mechanize::Cached
# * HTTP::Tiny::Mech
# * Data::Dump
# * Gentoo::PerlMod::Version
#

my $optparse = optparse->new(
  argv => \@ARGV,
  help => sub { print help(); },
);
my $search = {};
$search->{query} = { constant_score => { filter => { terms => { distribution => $optparse->extra_opts } } } };
$search->{sort} = [  { 'date' => 'desc', }, ];
$search->{size} = 5000;
$search->{fields} = [qw(
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
)];

_log( ['initialized: fetching search results'] );

my $results = mcpan->post( 'release/_search', $search );

_log( [ 'fetched %s results', scalar @{ $results->{hits}->{hits} } ] );

my $data = {};


for my $result ( @{ $results->{hits}->{hits} } ) {
  if ( not $result->{fields} ) {
    $result->{fields} = $result->{_source};
  }
  delete $result->{fields}->{dependency} if exists $result->{fields}->{dependency};
  my $fields = $result->{fields};

  my $cversion = $fields->{name};
  my $cdistrib = $fields->{distribution};
  $cversion =~ s/^${cdistrib}-//;

  $fields->{version_canon} = $cversion;
  $fields->{version_gentoo} = scalar try { gv( $cversion , { lax => 1 } ) };
  $fields->{archive_canon} = $fields->{author} . '/' . $fields->{archive};
  $data->{ $cdistrib } = [] unless exists $data->{ $cdistrib };
  push @{ $data->{ $cdistrib } }, $fields ;
}

require JSON;

my $encode = JSON->new->pretty->utf8->canonical;
say $encode->encode( $data  );

exit 0;

# Utils

sub pp { require Data::Dump; goto \&Data::Dump::pp }
sub gv { require Gentoo::PerlMod::Version; goto \&Gentoo::PerlMod::Version::gentooize_version }

sub _log {
  return unless $optparse->long_opts->{trace};
  return *STDERR->print(@_) if ( not ref $_[0] );

  state $prefix = "\e[7m* package_map.pl:\e[0m ";

  my ( $str, @args ) = @{ $_[0] };
  $str =~ s/\n?$/\n/;

  *STDERR->print($prefix);
  *STDERR->printf( $str, @args );
  return;

}



sub help {
  return <<"EOF";
package_map.pl

USAGE:

  package_map.pl PACKAGE [PACKAGE*][--help] [--trace]

  ie:

  # Show full metadata for Moose, Catalyst-Runtime and Dist-Zilla
  package_log.pl Moose Catalyst-Runtime Dist-Zilla

  # Be verbose about what we're doing
  package_log.pl Moose --trace

    --help        Show this message
    --trace       Turn on extra debugging.

EOF

}

