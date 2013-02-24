# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=OVID
MODULE_VERSION=0.31
inherit perl-module

DESCRIPTION='Use shorter versions of class names.'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.40 ( 0.400.0 )
	echo \>=virtual/perl-Module-Build-0.400.0
}
perl_meta_build() {
	# Test::More
	echo virtual/perl-Test-Simple
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
"
RDEPEND="

"
SRC_TEST="do"
