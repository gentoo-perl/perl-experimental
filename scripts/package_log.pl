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
use optparse;
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

my $optparse = optparse->new(
  argv => \@ARGV,
  help => sub { print help(); },
);

my $oldest_date = '2011-10-01T00:00:00.000Z';
my $newest_date = '2012-02-01T00:00:00.000Z';

my $search = {};

my $and = [];

if ( $optparse->long_opts->{from} ) {
  $oldest_date = $optparse->long_opts->{from};
}
my @to;
if ( my $ts = $optparse->long_opts->{to} ) {
  @to = ( to => $ts );
}

if ( not $optparse->long_opts->{all} ) {
  push @{$and},
    {
    range => {
      date => {
        from => $oldest_date,
        @to,
      }
    }
    };
}

#my $or = [];

#for my $dist ( @{ $optparse->extra_opts } ) {

push @{$and}, {
  terms => {
    'distribution' => $optparse->extra_opts,

    #     minimum_match => 1,
  }
};

#}

#push @{$and}, {
#    or => $or,
#};

$search->{query} = { constant_score => { filter => { and => $and, } } };

$search->{sort} = [

  #   { 'author' => 'asc', },
  { 'date' => 'desc', },
];
$search->{size} = 5000;

$search->{fields} = [qw( author name date distribution version )];

if ( $optparse->long_opts->{deps} ) {
  push @{ $search->{fields} }, '_source.dependency';
}

_log( ['initialized: fetching search results'] );

my $results = mcpan->post( 'release/_search', $search );

_log( [ 'fetched %s results', scalar @{ $results->{hits}->{hits} } ] );

for my $result ( @{ $results->{hits}->{hits} } ) {

  #  use Data::Dump qw(pp);
  #  pp $result;
  say $_ for format_result( $result->{fields}, $optparse->long_opts );
}

exit 0;

# Utils

sub ac { return author_colour( $_[0] ) . $_[0] . RESET }
sub dc { return dist_colour( $_[0] ) . $_[1] . RESET }
sub pp { require Data::Dump; goto \&Data::Dump::pp }
sub gv { require Gentoo::PerlMod::Version; goto \&Gentoo::PerlMod::Version::gentooize_version }

sub _log {
  return unless $optparse->long_opts->{trace};
  return *STDERR->print(@_) if ( not ref $_[0] );

  state $prefix = "\e[7m* package_log.pl:\e[0m ";

  my ( $str, @args ) = @{ $_[0] };
  $str =~ s/\n?$/\n/;

  *STDERR->print($prefix);
  *STDERR->printf( $str, @args );
  return;

}

sub format_result {

  my %f = %{ $_[0] };
  my %opts = %{ $_[1] || {} };

  _log( [ 'formatting entry for %s', $f{name} ] );

  my @out;

  push @out, entry_heading( @f{qw( date author distribution name version)} );

  my $name   = $f{name};
  my $author = $f{author};

  if ( $opts{deps} ) {
    my $deps = $f{'_source.dependency'};
    _log( [ 'processing %s deps for %s', scalar @{$deps}, $f{name} ] );
    push @out, sort map { dep_line($_) } @{$deps};
  }
  if ( $opts{changes} ) {
    _log( [ 'processing changes deps for %s', $name ] );
  }
  if ( $opts{changes} and my $message = change_for( $author, $name ) ) {
    push @out, "\e[1;38m" . $message . "\e[0m";
  }
  return @out;
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
  return sprintf "%s %s: %s %s %s", $rel, $phase, $dep->{module}, $dep->{version}, $version;
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

  if ( $optparse->long_opts->{'nosummarize'} ) {
    return $file;
  }

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

sub help {
  return <<"EOF";
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

    --all         Show all releases in the log.
    --help        Show this message
    --changes     Show ChangeLog Excerpts using CPAN::Changes where possible
    --deps        Show Dependency data ( as reported via metadata )
    --trace       Turn on extra debugging.
    --nosummarize Do no processing of Changes data and report it verbatim
                  ( Useful when CPAN::Changes gets it wrong :( )

    --from=2001-08-28T05:38:23.000Z  # Starting time  ( Defaults to somewhere in October 2011 )
    --to=   sdfas                    # Stopping time  ( Defaults to unset == now )

EOF

}

