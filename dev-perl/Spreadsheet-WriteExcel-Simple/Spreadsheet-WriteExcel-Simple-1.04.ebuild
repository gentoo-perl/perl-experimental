# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=TMTM
inherit perl-module

DESCRIPTION="A simple single-sheet Excel document"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Spreadsheet-WriteExcel-0.31
	>=dev-perl/IO-stringy-1.126
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.04
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
