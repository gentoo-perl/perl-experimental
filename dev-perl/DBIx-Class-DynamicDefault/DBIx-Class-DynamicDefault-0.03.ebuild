# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="Automatically set and update fields"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/DBIx-Class-0.08009
	dev-perl/parent
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		dev-perl/DBICx-TestDatabase
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
