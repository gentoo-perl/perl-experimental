# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=TDRUGEON
MODULE_VERSION=1.03
inherit perl-module

DESCRIPTION='map/grep arrays and hashes pairwise'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RDEPEND="
	>=dev-lang/perl-5.6.0
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	$RDEPEND
	>=virtual/perl-Test-Simple-0.420.0
"
SRC_TEST="do"
