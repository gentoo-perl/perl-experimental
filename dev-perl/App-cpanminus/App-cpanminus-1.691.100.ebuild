# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=1.6911
inherit perl-module

DESCRIPTION='get, unpack, build and install modules from CPAN'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# ExtUtils::Install 1.46 ( 1.460.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-1.46
	# ExtUtils::MakeMaker 6.31 ( 6.310.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.31
	# Module::Build 0.36 ( 0.360.0 )
	echo \>=virtual/perl-Module-Build-0.36.0
}
perl_meta_test() {
	# Test::More
	echo virtual/perl-Test-Simple
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
