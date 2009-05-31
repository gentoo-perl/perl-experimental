# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=BDFOY
inherit perl-module

DESCRIPTION="Extract a module version without running code"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND=""
DEPEND="
	${COMMON_DEPEND}
	test? ( virtual/perl-Test-Simple )
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
