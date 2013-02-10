# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.13
inherit perl-module

DESCRIPTION='Roles which support overloading'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Moose 0.94 ( 0.940.0 )
	echo \>=dev-perl/Moose-0.940.0
	# Moose::Role 1.15 ( 1.150.0 )
	echo \>=dev-perl/Moose-1.150.0
	# aliased
	echo dev-perl/aliased
	# namespace::autoclean 0.12 ( 0.120.0 )
	echo \>=dev-perl/namespace-autoclean-0.120.0
	# namespace::clean
	echo dev-perl/namespace-clean
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
}
perl_meta_test() {
	# Test::CheckDeps 0.002 ( 0.2.0 )
	echo \>=dev-perl/Test-CheckDeps-0.2.0
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
	# Test::NoWarnings 1.04 ( 1.40.0 )
	echo \>=dev-perl/Test-NoWarnings-1.40.0
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
