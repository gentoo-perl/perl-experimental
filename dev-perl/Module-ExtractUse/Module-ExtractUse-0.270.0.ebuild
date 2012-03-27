# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=DOMM
MODULE_VERSION=0.27
inherit perl-module

DESCRIPTION='Find out what modules are used'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=virtual/perl-Module-Build-0.36.01
}
perl_meta_build() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=virtual/perl-Module-Build-0.36.01
}
perl_meta_runtime() {
	# Carp
	# echo virtual/perl-Carp
	# Parse::RecDescent 1.967009 ( 1.967.9 )
	echo \>=dev-perl/Parse-RecDescent-1.967.9
	# Pod::Strip
	echo dev-perl/Pod-Strip
	# perl 5.008 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
	# vars
	echo dev-lang/perl
	# version
	echo virtual/perl-version
}
perl_meta_test() {
	# Test::Deep
	echo dev-perl/Test-Deep
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::NoWarnings
	echo dev-perl/Test-NoWarnings
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
