# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=CHOCOLATE
MODULE_VERSION=0.44
inherit perl-module

DESCRIPTION="annotate and delegate hooked OPs"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	>=dev-perl/extutils-depends-0.304 $(comment 0.304.0)
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
