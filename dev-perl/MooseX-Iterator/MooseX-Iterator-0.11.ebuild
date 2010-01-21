# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=RLB
inherit perl-module

DESCRIPTION="Iterate over collections"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Moose-0.86
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-Test-Simple-0.42
"
RDEPEND="
	${COMMON_DEPEND}
"
#SRC_TEST="do"
