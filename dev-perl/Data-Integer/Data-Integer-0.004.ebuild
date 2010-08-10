# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=ZEFRAM
inherit perl-module

DESCRIPTION="details of the native integer data type"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND=""
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Module-Build
	test? (
		virtual/perl-Test-Simple
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
