# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=PHAYLON
MODULE_VERSION=0.004
inherit perl-module

DESCRIPTION='Activate syntax extensions'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Carp
	echo dev-lang/perl
	# Data::OptList 0.104 ( 0.104.0 )
	echo \>=dev-perl/Data-OptList-0.104.0
	# namespace::clean
	echo dev-perl/namespace-clean
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# FindBin
	echo dev-lang/perl
	# Test::More 0.94 ( 0.940.0 )
	echo \>=virtual/perl-Test-Simple-0.94
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
