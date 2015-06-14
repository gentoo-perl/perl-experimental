# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=TJENNESS
MODULE_VERSION=0.61
inherit perl-module

DESCRIPTION='Convert Pod data to formatted Latex'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.36 ( 0.360.0 )
	echo \>=dev-perl/Module-Build-0.36
}
perl_meta_build() {
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# Pod::Find
	echo virtual/perl-Pod-Parser
	# Pod::ParseUtils 0.3 ( 0.300.0 )
	echo \>=virtual/perl-Pod-Parser-0.300.0
	# Pod::Parser
	echo virtual/perl-Pod-Parser
	# Pod::Select
	echo virtual/perl-Pod-Parser
	# if
	# echo virtual/perl-if
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
