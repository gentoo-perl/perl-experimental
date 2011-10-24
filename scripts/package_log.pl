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
use Term::ANSIColor qw( :constants );
use Try::Tiny;
use coloriterator
  coloriser => { -as => 'author_colour' },
  coloriser => { -as => 'dist_colour' };

# FILENAME: pvlist.pl
# CREATED: 16/10/11 20:16:03 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: Show version history for interesting perl dists

# DEPENDENCIES:
#
# * MetaCPAN::API
# * CHI
# * WWW::Mechanize::Cached
# * HTTP::Tiny::Mech
# * Data::Dump
# * Term::ANSIColor
# * Gentoo::PerlMod::Version
# * CPAN::Changes
#

my $flags;
my $singleflags;
@ARGV = grep { defined } map {
  $_ =~ /^--(\w+)/
    ? do { $flags->{$1}++; undef }
    : do {
    $_ =~ /^-(\w+)/
      ? do { $singleflags->{$1}++; undef }
      : do { $_ }
    }
} @ARGV;

if ( $flags->{help} or $singleflags->{h} ) {
  print <<"EOF";
package_log.pl

USAGE:

  package_log.pl PACKAGE [PACKAGE*] [--all] [--help] [--changes] [--deps] [--trace]

  ie:

  # Just show the recent log for Moose, Catalyst-Runtime and Dist-Zilla
  package_log.pl Moose Catalyst-Runtime Dist-Zilla

  # show all log events for Moose
  package_log.pl Moose --all

  # show recent Moose log events with attached changelog data and dependenices
  package_log.pl Moose --changes --deps

  # Be verbose about what we're doing
  package_log.pl Moose --trace --all

    --all     Show all releases in the log.
    --help    Show this message
    --changes Show ChangeLog Excerpts using CPAN::Changes where possible
    --deps    Show Dependency data ( as reported via metadata )
    --trace   Turn on extra debugging.
EOF
  exit 0;
}

my $package = shift @ARGV;

my (@want_dists) = ( $package, @ARGV );

my $oldest_date = '2011-09-01T00:00:00.000Z';
my $newest_date = '2012-01-01T00:00:00.000Z';

my $search = {};
$search->{query} = {
  terms => {
    distribution  => [ @want_dists, ],
    minimum_match => 1,
  },
};
if ( not $flags->{all} ) {
  $search->{filter} = {
    range => {
      date => {
        from => $oldest_date,
        to   => $newest_date,
      },
    },
  };
}
$search->{sort} = [

  #   { 'author' => 'asc', },
  { 'date' => 'desc', },
];
$search->{size} = 1024;

# $flags->{fields} = [qw( author name date distribution )],
_log( ['initialized: fetching search results'] );

my $results = mcpan->post( 'release', $search );

_log( [ 'fetched %s results', scalar @{ $results->{hits}->{hits} } ] );

sub ac {
  return author_colour( $_[0] ) . $_[0] . RESET;
}

sub dc {
  return dist_colour( $_[0] ) . $_[1] . RESET;
}

sub pp {
  require Data::Dump;
  goto \&Data::Dump::pp;
}

sub gv {
  require Gentoo::PerlMod::Version;
  goto \&Gentoo::PerlMod::Version::gentooize_version;
}

sub _log {
  return unless $flags->{trace};
  if ( not ref $_[0] ) {
    return *STDERR->print(@_);
  }
  my $conf = $_[0];
  my ( $str, @args ) = @{$conf};
  $str =~ s/\n?$/\n/;
  return *STDERR->print( sprintf "\e[7m* %s:\e[0m " . $str, 'package_log.pl', @args );
}

for my $result ( @{ $results->{hits}->{hits} } ) {

  my %f = %{ $result->{_source} };

  #  say pp \%f;
  my ( $date, $distribution, $name, $author, $deps, $version ) = @f{qw( date distribution name author dependency version )};
  _log( [ 'formatting entry for %s', $name ] );
  say entry_heading( @f{qw( date author distribution name version)} );

  if ( $flags->{deps} ) {
    _log( [ 'processing %s deps for %s', scalar @{$deps}, $name ] );
    print $_ for sort map { dep_line($_) } @{$deps};
  }
  if ( $flags->{changes} ) {
    _log( [ 'processing changes deps for %s', $name ] );
  }
  if ( $flags->{changes} and my $message = change_for( $author, $name ) ) {
    say "\n\e[1;38m" . $message . "\e[0m";
  }

}

sub entry_heading {
  my ( $date, $author, $distribution, $name, $version ) = @_;
  state $date_style     = UNDERLINE . CYAN;
  state $gentoo_version = BOLD . CYAN;
  return sprintf "%s - %s/%s %s",
    $date_style . $date . RESET,
    ac($author),
    dc( $distribution, $name ),
    $gentoo_version . gv( $version, { lax => 1 } ) . RESET;
}

sub dep_line {
  my ($dep) = @_;
  state $gentoo_version = BOLD . CYAN;
  my $rel = ( $dep->{relationship} ne 'requires' ? BRIGHT_BLUE . $dep->{relationship} : q[] );
  my $phase = ( $dep->{phase} eq 'develop' ? BRIGHT_GREEN : q[] ) . $dep->{phase};
  my $version = $gentoo_version . gv( $dep->{version}, { lax => 1 } ) . RESET;
  return sprintf "%s %s: %s %s %s\n", $rel, $phase, $dep->{module}, $dep->{version}, $version;
}

sub change_for {
  my ( $author, $release ) = @_;
  my $file;
  my @trylist = qw( Changes CHANGES ChangeLog );
  my @errors;

  my $success;

  for my $basename (@trylist) {
    try {
      _log( [ 'trying %s for %s', $basename, $release ] );
      $file = mcpan->source(
        author  => $author,
        release => $release,
        path    => $basename,
      );
      $success = $basename;
    }
    catch {
      $success = 0;
      _log( [ 'failed with %s for %s : %s', $basename, $release, $_ ] );
      push @errors, $_;
    };
    last if $success;
  }
  if ( !$success ) {
    _log( [ 'no changes file %s ', $release ] );
    warn for @errors;
  }

  return unless $file;

  require CPAN::Changes;
  my $changes = CPAN::Changes->load_string($file);
  if ($changes) {
    my @releases = $changes->releases();
    return $releases[-1]->serialize() if @releases;
    _log( [ 'No releases reported by CPAN::Changes for file %s on %s', $success, $release ] );

    #warn "No releases :( ";
  }

  #warn "Cant load \$file with CPAN::Changes";
  my @out = split /$/m, $file;
  return join qq{\n}, splice @out, 0, 10;

}

