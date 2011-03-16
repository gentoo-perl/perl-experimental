# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="3"
MODULE_AUTHOR=LUKEC
MODULE_VERSION="0.05"
inherit perl-module

DESCRIPTION="Easy mocking of LWP packages"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Test-MockObject-1.80.0
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-Test-Simple-0.42

"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
