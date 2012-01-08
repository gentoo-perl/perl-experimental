# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=1.5007
inherit perl-module

DESCRIPTION='Get, unpack, build and install modules from CPAN.'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_runtime() {
	# ExtUtils::Install 1.46 ( 1.460.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-1.46
	# ExtUtils::MakeMaker 6.31 ( 6.310.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.31
	# Module::Build 0.36 ( 0.360.0 )
	echo \>=virtual/perl-Module-Build-0.36.0
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
