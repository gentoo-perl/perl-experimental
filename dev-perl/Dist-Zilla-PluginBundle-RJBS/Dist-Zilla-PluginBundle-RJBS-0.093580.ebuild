# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=RJBS
inherit perl-module

DESCRIPTION="BeLike::RJBS when you build your dists "
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Dist-Zilla-1.092990
	>=dev-perl/Pod-Elemental-0.092970
	dev-perl/Pod-Elemental-Transformer-List
	>=dev-perl/Dist-Zilla-Plugin-PodWeaver-3.092971
	>=dev-perl/Pod-Weaver-3.093530
	dev-perl/Dist-Zilla-Plugin-Repository
	>=dev-perl/Dist-Zilla-Plugin-TaskWeaver-0.093330
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
