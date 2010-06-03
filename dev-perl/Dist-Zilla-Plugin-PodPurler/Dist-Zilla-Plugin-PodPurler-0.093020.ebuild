# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=RJBS

inherit versionator

#MY_P=${PN}-$(replace_version_separator 2 '_')
#S=${WORKDIR}/${MY_P}

inherit perl-module

DESCRIPTION="like PodWeaver, but more erratic and amateurish"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	dev-perl/PPI
	dev-perl/Pod-Eventual
	>=dev-perl/Pod-Elemental-0.0092930
	dev-perl/Dist-Zilla
	dev-perl/Moose-Autobox
	>=dev-perl/List-MoreUtils-0.08
	dev-perl/Moose
	dev-perl/Pod-Elemental-PerlMunger
"
DEPEND="
	${COMMON_DEPEND}

"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
