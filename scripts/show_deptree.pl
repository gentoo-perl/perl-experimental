#!/usr/bin/env perl

eval 'echo "Called with something not perl"' && exit 1    # Non-Perl protection.
  if 0;

use 5.14.2;
use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/lib";
use env::gentoo::perl_experimental;
use utf8;

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

# FILENAME: show_deptree.pl
# CREATED: 25/10/11 12:15:51 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: show the metadata harvested for a given packages install tree.

# usage:
#
# gen_ebuild.pl DOY/Moose-2.0301-TRIAL
#
sub help {
  return <<'EOF';
gen_ebuild.pl

USAGE:

  show_deptree.pl DOY/Moose-2.0301-TRIAL

EOF
}
my ($release) = shift(@ARGV);

*STDOUT->binmode(':utf8');
*STDERR->binmode(':utf8');

require deptools;
my $dep_phases = deptools::get_dep_phases($release);

my @queue;

for my $module ( keys %{ $dep_phases->{modules} } ) {
  for my $declaration ( @{ $dep_phases->{modules}->{$module} } ) {
    push @queue, [ $module, $declaration ];
  }
}
my @squeue =
  sort { $a->[1]->[2] cmp $b->[1]->[2] or $a->[1]->[3] cmp $b->[1]->[3] or $a->[0] cmp $b->[0] } @queue;

require dep::handler::stdout;
require dep::handler::bashcode;

my $handler = dep::handler::stdout->new();
my $handler2 = dep::handler::bashcode->new();


for my $qi (@squeue) {
  deptools::dispatch_dependency_handler( $release, @{$qi}, $handler2 );
}

#say pp( \%modules,);# { pretty => 1 } );
exit 1;

sub pkg_for_module {
  my ($module) = shift;

}

sub gen_dep {
  state $template = qq{\t# %s%s\n\techo %s\n};
  my ( $module, $version ) = @_;

}

