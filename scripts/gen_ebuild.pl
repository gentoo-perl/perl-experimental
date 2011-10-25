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

if ( $flags->{help} or $singleflags->{h} ) { print help(); exit 0; }

# FILENAME: gen_ebuild.pl
# CREATED: 25/10/11 12:15:51 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: An attempt at generating ebuilds entirely from MetaCPAN data

# usage:
#
# gen_ebuild.pl DOY/Moose-2.0301-TRIAL
#  emits Moose/Moose-2.30.100_rc.ebuild
my ($release) = shift(@ARGV);

my $result = [ map { $_->{as_string} } metacpan->find_dist_simple( $release , {notrim=>1}) ];

use Data::Dump qw( pp );
use JSON qw( to_json );
say to_json($result , { pretty => 1 } );
1;

sub pkg_for_module {
  my ($module) = shift;

}

sub gen_dep {
  state $template = qq{\t# %s%s\n\techo %s\n};
  my ( $module, $version ) = @_;

}

sub help {
  return <<'EOF';
gen_ebuild.pl

USAGE:

  gen_ebuild.pl DOY/Moose-2.0301-TRIAL

  edit ./Moose-2.30.100_rc.ebuild 

  done!

EOF
}
