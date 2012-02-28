# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
MODULE_VERSION=1.0.1
inherit perl-module

DESCRIPTION='Automatically collect index metadata from MooseX::AttributeIndexes consuming models.'
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
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
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
