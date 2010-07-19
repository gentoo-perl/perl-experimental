# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=LBROCARD
inherit perl-module

DESCRIPTION="Automated driving and testing of terminal-based programs"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	dev-perl/Class-Accessor
	dev-perl/Expect-Simple
	virtual/perl-Test-Simple
"
DEPEND="
	virtual/perl-Module-Build
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
