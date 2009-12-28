# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=RJBS
inherit perl-module

DESCRIPTION="a PodWeaver plugin used to build Task distributions"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Dist-Zilla-1.093371
	dev-perl/Dist-Zilla-Plugin-PodWeaver
	dev-perl/Moose
	dev-perl/Moose-Autobox
	dev-perl/Pod-Elemental
	>=dev-perl/Pod-Weaver-3
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.88
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
