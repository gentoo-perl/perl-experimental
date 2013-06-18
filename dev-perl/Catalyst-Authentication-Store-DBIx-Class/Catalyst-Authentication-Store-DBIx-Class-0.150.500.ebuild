# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.1505
inherit perl-module

DESCRIPTION='A storage class for Catalyst Authentication using DBIx::Class'
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
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# Catalyst::Model::DBIC::Schema 0.18 ( 0.180.0 )
	echo \>=dev-perl/Catalyst-Model-DBIC-Schema-0.180.0
	# Catalyst::Plugin::Authentication 0.10008 ( 0.100.80 )
	echo \>=dev-perl/Catalyst-Plugin-Authentication-0.100.80
	# Catalyst::Runtime 5.8 ( 5.800.0 )
	echo \>=dev-perl/Catalyst-Runtime-5.800.0
	# DBIx::Class 0.08 ( 0.80.0 )
	echo \>=dev-perl/DBIx-Class-0.80.0
	# List::MoreUtils
	echo dev-perl/List-MoreUtils
	# Moose
	echo dev-perl/Moose
	# Try::Tiny
	echo dev-perl/Try-Tiny
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
	# perl v5.8.1 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
