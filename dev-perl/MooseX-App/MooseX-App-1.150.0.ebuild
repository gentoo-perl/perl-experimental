# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=MAROS
MODULE_VERSION=1.15
inherit perl-module

DESCRIPTION='Write user-friendly command line apps with even less suffering'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	# Test::Most
	echo dev-perl/Test-Most
	# Test::NoWarnings
	echo dev-perl/Test-NoWarnings
}
perl_meta_runtime() {
	# Config::Any
	echo dev-perl/Config-Any
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Module::Pluggable
	echo virtual/perl-Module-Pluggable
	# Moose 2.00 ( 2.0.0 )
	echo \>=dev-perl/Moose-2.0.0
	# MooseX::Getopt 0.43 ( 0.430.0 )
	echo \>=dev-perl/MooseX-Getopt-0.430.0
	# MooseX::Types::Path::Class
	echo dev-perl/MooseX-Types-Path-Class
	# Path::Class
	echo dev-perl/Path-Class
	# Pod::Elemental
	echo dev-perl/Pod-Elemental
	# String::CamelCase
	echo dev-perl/String-CamelCase
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
	# perl v5.10.0 ( 5.10.0 )
	echo \>=dev-lang/perl-5.10.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="broken"
