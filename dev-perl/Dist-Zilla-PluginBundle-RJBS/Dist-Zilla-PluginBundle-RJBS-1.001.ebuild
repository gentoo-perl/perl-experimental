# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=RJBS
inherit perl-module

DESCRIPTION="BeLike::RJBS when you build your dists "
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	dev-perl/DateTime
	>=dev-perl/Dist-Zilla-2.100922
	dev-perl/Dist-Zilla-Plugin-BumpVersionFromGit
	>=dev-perl/Dist-Zilla-Plugin-PodWeaver-3.092971
	dev-perl/Dist-Zilla-Plugin-Repository
	>=dev-perl/Dist-Zilla-Plugin-TaskWeaver-0.093330
	dev-perl/Dist-Zilla-Plugin-Git
	dev-perl/Moose
	dev-perl/Moose-Autobox
	>=dev-perl/Pod-Elemental-0.092970
	dev-perl/Pod-Elemental-Transformer-List
	>=dev-perl/Pod-Weaver-3.00310
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.56
	virtual/perl-Test-Simple
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
