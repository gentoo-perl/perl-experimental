# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=DOHERTY
MODULE_VERSION=2.0.1
inherit perl-module

DESCRIPTION='Release tests for minimum required versions'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=virtual/perl-Module-Build-0.36.01
}
perl_meta_build() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=virtual/perl-Module-Build-0.36.01
}
perl_meta_runtime() {
	# Dist::Zilla::Plugin::InlineFiles
	echo dev-perl/Dist-Zilla
	# Moose
	echo dev-perl/Moose
	# Test::MinimumVersion
	echo dev-perl/Test-MinimumVersion
	# perl 5.008 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
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
	# Test::DZil
	echo dev-perl/Dist-Zilla
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
	# Test::Output
	echo dev-perl/Test-Output
	# autodie
	echo dev-perl/autodie
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
