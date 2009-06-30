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
	dev-perl/Dist-Zilla-Plugin-PodPurler
	>=dev-perl/Dist-Zilla-1.091370
	dev-perl/Dist-Zilla-Plugin-Repository
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
