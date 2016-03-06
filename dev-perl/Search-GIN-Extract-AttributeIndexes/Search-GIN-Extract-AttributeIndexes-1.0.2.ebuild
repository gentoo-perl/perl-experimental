# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=1.0.2
inherit perl-module

DESCRIPTION='Automatically collect index metadata from MooseX::AttributeIndexes consuming models.'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.4004 ( 0.400.400 )
	echo \>=dev-perl/Module-Build-0.400.400
}
perl_meta_build() {
	# Module::Build 0.4004 ( 0.400.400 )
	echo \>=dev-perl/Module-Build-0.400.400
}
perl_meta_runtime() {
	# Carp
	# echo dev-lang/perl
	# Moose
	echo dev-perl/Moose
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Search::GIN::Extract::Callback
	echo dev-perl/Search-GIN
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
	# perl 5.010000 ( 5.10.0 )
	echo \>=dev-lang/perl-5.10.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Data::Dump
	echo dev-perl/Data-Dump
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# MooseX::AttributeIndexes
	echo dev-perl/MooseX-AttributeIndexes
	# MooseX::Types::Moose
	echo dev-perl/MooseX-Types
	# Test::More 0.98 ( 0.980.0 )
	echo \>=virtual/perl-Test-Simple-0.980.0
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
