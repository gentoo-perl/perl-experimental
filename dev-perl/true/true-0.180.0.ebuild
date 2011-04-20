# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=CHOCOLATE
MODULE_VERSION=0.18
inherit perl-module

DESCRIPTION="automatically return a true value when a file is required"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

comment() { echo ''; }
COMMON_DEPEND="
	>=dev-perl/B-Hooks-OP-Annotation-0.430.0
	>=dev-perl/B-Hooks-OP-Check-0.18 $(comment 0.180.0)
	>=dev-perl/Devel-StackTrace-1.270 $(comment 1.270.0)
"
DEPEND="
	${COMMON_DEPEND}
	$(comment CONFIGURE REQUIRES)
	>=dev-perl/extutils-depends-0.304 $(comment 0.304.0)
	virtual/perl-ExtUtils-MakeMaker
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
