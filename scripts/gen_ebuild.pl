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

my $env = env::gentoo::perl_experimental->new();
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

my ($release_info) = deptools::get_deps($release);

if ( not $release_info ) {
  die "Cannot find $release on MetaCPAN";
}
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
my $handler2 = dep::handler::bashcode->new( ( $flags->{debug} ? ( debug => 1 ) : () ), debug_handler => $handler, );

for my $qi (@squeue) {
  deptools::dispatch_dependency_handler( $release, @{$qi}, $handler2 );
}

my $depends  = [];
my $rdepends = [];
require POSIX;
my $year = POSIX::strftime( '%Y', gmtime );

my $path = deptools::gentooize_pkg( $release_info->{distribution} );
require Gentoo::PerlMod::Version;
my $version = Gentoo::PerlMod::Version::gentooize_version( $release_info->{version}, { lax => 1 } );
$env->root->subdir($path)->mkpath;
my $file = $env->root->subdir($path)->file( $release_info->{distribution} . '-' . $version . '.ebuild' );

my ($fh) = $file->openw;
say "Writing $file";
$fh->say("# Copyright 1999-$year Gentoo Foundation");
$fh->say("# Distributed under the terms of the GNU General Public License v2");
$fh->say("# \$Header: \$");
$fh->say("EAPI=4");
$fh->say( "MODULE_AUTHOR=" . $release_info->{author} );
$fh->say( "MODULE_VERSION=" . $release_info->{version} );
$fh->say('inherit perl-module');
$fh->say('');

if ( not defined $release_info->{abstract} ) {
  $fh->say( 'DESCRIPTION=\'' . $release_info->{distribution} . '\'' );
  warn "Missing an ABSTRACT";
}
else {
  $fh->say( 'DESCRIPTION=\'' . $release_info->{abstract} . '\'' );
}

my $lics   = [];
my $licmap = {
  perl_5     => [qw( Artistic GPL-2 )],
  apache_2_0 => [qw( Apache-2.0 )],
  mit        => [qw( MIT )],
  lgpl_2_1   => [qw( LGPL-2.1 )],
  artistic_2 => [qw( Artistic-2 )],
};

for my $lic ( @{ $release_info->{license} } ) {
  if ( exists $licmap->{$lic} ) {
    push @$lics, @{ $licmap->{$lic} };
  }
  else {
    warn "No Gentoo maping listed for $lic license type";
  }
}

if ( scalar @$lics == 1 ) {
  $fh->say( 'LICENSE=" ' . $lics->[0] . '"' );
}
elsif ( scalar @$lics > 1 ) {
  $fh->say( 'LICENSE=" || ( ' . ( join q{ }, @$lics ) . ' )"' );
}
else {
  $fh->say('LICENSE=""');
}
$fh->say('SLOT="0"');
$fh->say('KEYWORDS="~amd64 ~x86"');
if ( $handler2->has_tdeps ) {
  $fh->say('IUSE="test"');
}
else {
  $fh->say('IUSE=""');
}

if ( $handler2->has_cdeps ) {
  $fh->say('perl_meta_configure() {');
  for my $dep ( @{ $handler2->cdeps } ) {
    $fh->say( "\t# " . $dep->{dep} );
    $fh->say( "\techo " . $dep->{install} );
  }
  $fh->say('}');
  push @{$depends}, '$(perl_meta_configure)';
}
if ( $handler2->has_bdeps ) {
  $fh->say('perl_meta_build() {');
  for my $dep ( @{ $handler2->bdeps } ) {
    $fh->say( "\t# " . $dep->{dep} );
    $fh->say( "\techo " . $dep->{install} );
  }
  $fh->say('}');
  push @{$depends}, '$(perl_meta_build)';

}
if ( $handler2->has_rdeps ) {
  $fh->say('perl_meta_runtime() {');
  for my $dep ( @{ $handler2->rdeps } ) {
    $fh->say( "\t# " . $dep->{dep} );
    $fh->say( "\techo " . $dep->{install} );
  }
  $fh->say('}');
  push @{$depends},  '$(perl_meta_runtime)';
  push @{$rdepends}, '$(perl_meta_runtime)';

}
if ( $handler2->has_tdeps ) {
  $fh->say('perl_meta_test() {');
  for my $dep ( @{ $handler2->tdeps } ) {
    $fh->say( "\t# " . $dep->{dep} );
    $fh->say( "\techo " . $dep->{install} );
  }
  $fh->say('}');
  push @{$depends}, 'test? ( $(perl_meta_test) )';
}

$fh->say( "DEPEND=\"\n" .  ( join qq{\n}, map { "\t$_" } @{$depends} ) . "\n\"" );
$fh->say( "RDEPEND=\"\n" . ( join qq{\n}, map { "\t$_" } @{$rdepends} ) . "\n\"" );
$fh->say("SRC_TEST=\"do\"");

#say pp( \%modules,);# { pretty => 1 } );
exit 1;

sub pkg_for_module {
  my ($module) = shift;

}

sub gen_dep {
  state $template = qq{\t# %s%s\n\techo %s\n};
  my ( $module, $version ) = @_;

}

