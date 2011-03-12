# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=CHROMATIC
MODULE_VERSION="1.01"
inherit perl-module

DESCRIPTION="test the Kwalitee of a distribution before you release it"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Module-CPANTS-Analyse-0.820.0
	>=virtual/perl-Test-Simple-0.47
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Module-Build
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
