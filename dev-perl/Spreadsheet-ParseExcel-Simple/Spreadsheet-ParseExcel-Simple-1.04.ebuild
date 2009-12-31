# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=TMTM
inherit perl-module

DESCRIPTION="A simple interface to Excel data "
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Spreadsheet-ParseExcel-0.18

"
DEPEND="
	${COMMON_DEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.01
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
