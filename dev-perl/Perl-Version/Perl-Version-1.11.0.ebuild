# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=ANDYA
MODULE_VERSION=1.011
inherit perl-module

DESCRIPTION="Parse and manipulate Perl version strings"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
	>=dev-perl/File-Slurp-9999.12
	>=virtual/perl-Getopt-Long-2.34
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		dev-perl/Test-Pod
		dev-perl/Test-Pod-Coverage
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
