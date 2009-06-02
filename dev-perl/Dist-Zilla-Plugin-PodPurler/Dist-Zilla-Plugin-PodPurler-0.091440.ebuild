# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=RJBS
inherit perl-module

DESCRIPTION="like PodWeaver, but more erratic and amateurish"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	dev-perl/PPI
	dev-perl/Pod-Eventual
	dev-perl/Dist-Zilla
	dev-perl/Moose-Autobox
	>=dev-perl/List-MoreUtils-0.08
	dev-perl/Moose
"
DEPEND="
	${COMMON_DEPEND}

"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
