# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=DOHERTY
MODULE_VERSION=0.008
inherit perl-module

DESCRIPTION='release tests for your changelog'
LICENSE=" || ( Artistic GPL-2 )"
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
	# Data::Section
	echo dev-perl/Data-Section
	# Dist::Zilla 4 ( 4.0.0 )
	echo \>=dev-perl/Dist-Zilla-4.0.0
	# Dist::Zilla::File::InMemory
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::FileGatherer
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::PrereqSource
	echo dev-perl/Dist-Zilla
	# Moose
	echo dev-perl/Moose
	# Test::CPAN::Changes 0.19 ( 0.190.0 )
	echo \>=dev-perl/CPAN-Changes-0.190.0
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# File::Find
	echo dev-lang/perl
	# File::Path
	echo virtual/perl-File-Path
	# File::Temp
	echo virtual/perl-File-Temp
	# Moose::Autobox
	echo dev-perl/Moose-Autobox
	# Test::CPAN::Changes
	echo dev-perl/CPAN-Changes
	# Test::DZil
	echo dev-perl/Dist-Zilla
	# Test::More 0.94 ( 0.940.0 )
	echo \>=virtual/perl-Test-Simple-0.94
	# autodie
	echo virtual/perl-autodie
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
SRC_TEST="do"
