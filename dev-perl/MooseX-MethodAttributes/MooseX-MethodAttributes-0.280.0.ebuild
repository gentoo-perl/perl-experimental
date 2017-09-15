# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.28
inherit perl-module

DESCRIPTION='code attribute introspection'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Moose 0.98 ( 0.980.0 )
	echo \>=dev-perl/Moose-0.980.0
	# MooseX::Types::Moose 0.21 ( 0.210.0 )
	echo \>=dev-perl/MooseX-Types-0.210.0
	# namespace::clean 0.10 ( 0.100.0 )
	echo \>=dev-perl/namespace-clean-0.100.0
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
}
perl_meta_test() {
	# Test::CheckDeps 0.002 ( 0.2.0 )
	echo \>=dev-perl/Test-CheckDeps-0.2.0
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
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
