# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="automatically validate lexicals against Moose type constraints"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	|| ( >=dev-perl/Moose-1.990 dev-perl/Class-MOP )
	dev-perl/Lexical-Types
	dev-perl/Moose
	>=dev-perl/MooseX-Types-0.09
	dev-perl/Variable-Magic
	dev-perl/namespace-autoclean
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
