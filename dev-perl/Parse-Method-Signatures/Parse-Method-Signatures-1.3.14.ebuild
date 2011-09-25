# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=ILMARI
MODULE_VERSION=1.003014
inherit perl-module

DESCRIPTION="Perl6 like method signature parser"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_mi_configure() {
	# strict

	# warnings
	echo -n;
}
perl_mi_requires() {
	# List::MoreUtils 0.20
	echo \>=dev-perl/List-MoreUtils-0.20
	# Moose
	echo dev-perl/Moose
	# MooseX::Traits 0.06
	echo \>=dev-perl/MooseX-Traits-0.06
	# MooseX::Types 0.17
	echo \>=dev-perl/MooseX-Types-0.170.0
	# MooseX::Types::Moose
	echo dev-perl/MooseX-Types
	# MooseX::Types::Structured
	echo dev-perl/MooseX-Types-Structured
	# namespace::clean 0.10
	echo \>=dev-perl/namespace-clean-0.100
	# PPI 1.203
	echo \>=dev-perl/PPI-1.203
}
perl_mi_test() {
	# aliased
	echo dev-perl/aliased
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::Differences
	echo dev-perl/Test-Differences
	# MooseX::Types::Structured
	echo dev-perl/MooseX-Types-Structured
}
RDEPEND="$(perl_mi_requires)"
DEPEND="
	$(perl_mi_configure)
	$(perl_mi_requires)
	test? ( $(perl_mi_test) )
"
SRC_TEST="do"
