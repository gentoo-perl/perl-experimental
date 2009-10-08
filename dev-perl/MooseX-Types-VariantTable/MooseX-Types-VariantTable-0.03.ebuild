# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="Type constraint based variant table"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Moose-0.75
	>=dev-perl/MooseX-Clone-0.03
	>=dev-perl/MooseX-Types-Structured-0.12
	dev-perl/Sub-Exporter
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		dev-perl/Test-Exception
		dev-perl/Test-use-ok
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
