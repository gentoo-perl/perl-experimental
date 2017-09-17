# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=APOCAL
MODULE_VERSION=1.003
inherit perl-module

DESCRIPTION='Detects the minimum version of Perl required for your dist'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=dev-perl/Module-Build-0.36.01
}
perl_meta_build() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=dev-perl/Module-Build-0.36.01
}
perl_meta_runtime() {
	# Dist::Zilla::Role::FileFinderUser 4.102345 ( 4.102.345 )
	echo \>=dev-perl/Dist-Zilla-4.102.345
	# Dist::Zilla::Role::PrereqSource 4.102345 ( 4.102.345 )
	echo \>=dev-perl/Dist-Zilla-4.102.345
	# Moose 1.03 ( 1.30.0 )
	echo \>=dev-perl/Moose-1.30.0
	# Moose::Util::TypeConstraints 1.01 ( 1.10.0 )
	echo \>=dev-perl/Moose-1.10.0
	# MooseX::Types::Perl 0.101340 ( 0.101.340 )
	echo \>=dev-perl/MooseX-Types-Perl-0.101.340
	# Perl::MinimumVersion 1.26 ( 1.260.0 )
	echo \>=dev-perl/Perl-MinimumVersion-1.260.0
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
}
perl_meta_test() {
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
