# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=RJBS
inherit perl-module

DESCRIPTION="do horrible things to POD, producing better docs"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Dist-Zilla-1.004
	dev-perl/List-MoreUtils
	dev-perl/Moose
	dev-perl/Moose-Autobox
	>=dev-perl/Pod-Weaver-3.093001
	dev-perl/Pod-Elemental-PerlMunger
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
