# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.11
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
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
}
perl_meta_test() {
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
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
