# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=RJBS
MODULE_VERSION="0.101620"
inherit perl-module

DESCRIPTION="a PodWeaver plugin used to build Task distributions"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Dist-Zilla-2
	dev-perl/Dist-Zilla-Plugin-PodWeaver
	dev-perl/Moose
	dev-perl/Moose-Autobox
	dev-perl/Pod-Elemental
	>=dev-perl/Pod-Weaver-3
	>=virtual/perl-Test-Simple-0.88
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.31
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
