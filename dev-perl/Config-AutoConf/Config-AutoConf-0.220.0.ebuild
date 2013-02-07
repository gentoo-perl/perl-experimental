# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=AMBS
MODULE_VERSION=0.22
MODULE_SECTION=Config
inherit perl-module

DESCRIPTION='A module to implement some of AutoConf macros in pure perl.'
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
	# Capture::Tiny
	echo dev-perl/Capture-Tiny
	# ExtUtils::CBuilder 0.23 ( 0.230.0 )
	echo \>=virtual/perl-ExtUtils-CBuilder-0.23.00
	# Test::More
	echo virtual/perl-Test-Simple
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
