# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=HKCLARK
inherit perl-module

DESCRIPTION="The Catalyst developer's manual"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=""
DEPEND="
	${RDEPEND}
	test? (
		virtual/perl-Test-Simple
	)
"
SRC_TEST="do"
