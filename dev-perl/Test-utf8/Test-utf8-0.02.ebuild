# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=MARKF
inherit perl-module

DESCRIPTION="handy utf8 tests"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=virtual/perl-Test-Simple-0.15
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Module-Build
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
