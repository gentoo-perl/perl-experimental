# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=FLORA
MODULE_VERSION=0.01
inherit perl-module

DESCRIPTION='Add an encoding command to your POD'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.31 ( 6.310.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.31
}
perl_meta_runtime() {
	# List::AllUtils
	echo dev-perl/List-AllUtils
	# Moose
	echo dev-perl/Moose
	# Moose::Autobox
	echo dev-perl/Moose-Autobox
	# MooseX::Types::Moose
	echo dev-perl/MooseX-Types
	# Pod::Weaver::Role::Finalizer
	echo dev-perl/Pod-Weaver
	# aliased
	echo dev-perl/aliased
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
}
perl_meta_test() {
	# FindBin
	echo dev-lang/perl
	# PPI
	echo dev-perl/PPI
	# Pod::Elemental
	echo dev-perl/Pod-Elemental
	# Pod::Weaver
	echo dev-perl/Pod-Weaver
	# Test::Differences
	echo dev-perl/Test-Differences
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
