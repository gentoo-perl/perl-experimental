# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=ILMARI
MODULE_VERSION=1.003015
inherit perl-module

DESCRIPTION='Perl6 like method signature parser'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
	# MooseX::Types::Structured
	echo dev-perl/MooseX-Types-Structured
	# Test::Differences
	echo dev-perl/Test-Differences
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::More
	echo virtual/perl-Test-Simple
	# aliased
	echo dev-perl/aliased
}
perl_meta_runtime() {
	# List::MoreUtils 0.20 ( 0.200.0 )
	echo \>=dev-perl/List-MoreUtils-0.20
	# Moose
	echo dev-perl/Moose
	# MooseX::Traits 0.06 ( 0.60.0 )
	echo \>=dev-perl/MooseX-Traits-0.06
	# MooseX::Types 0.17 ( 0.170.0 )
	echo \>=dev-perl/MooseX-Types-0.170.0
	# MooseX::Types::Moose
	echo dev-perl/MooseX-Types
	# MooseX::Types::Structured
	echo dev-perl/MooseX-Types-Structured
	# PPI 1.203 ( 1.203.0 )
	echo \>=dev-perl/PPI-1.203.0
	# namespace::clean 0.10 ( 0.100.0 )
	echo \>=dev-perl/namespace-clean-0.100.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
