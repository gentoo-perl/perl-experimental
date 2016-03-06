# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.32
inherit perl-module

DESCRIPTION='Load config files of various types'
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
	# Catalyst::Runtime 5.7008 ( 5.700.800 )
	echo \>=dev-perl/Catalyst-Runtime-5.700.800
	# Config::Any 0.20 ( 0.200.0 )
	echo \>=dev-perl/Config-Any-0.200.0
	# Data::Visitor 0.24 ( 0.240.0 )
	echo \>=dev-perl/Data-Visitor-0.240.0
	# MRO::Compat 0.09 ( 0.90.0 )
	echo \>=dev-perl/MRO-Compat-0.90.0
	# perl v5.8.0 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
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
