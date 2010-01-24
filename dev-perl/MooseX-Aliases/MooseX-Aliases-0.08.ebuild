# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=DOY
inherit perl-module

DESCRIPTION="easy aliasing of methods and attributes in Moose"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Moose-0.90
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		dev-perl/Test-Exception
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
