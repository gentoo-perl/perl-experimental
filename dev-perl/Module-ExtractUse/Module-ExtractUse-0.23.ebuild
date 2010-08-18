# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=DOMM
inherit perl-module

DESCRIPTION="Find out what modules are used"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Parse-RecDescent-1.94
	>=dev-perl/Pod-Strip-1.00
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Module-Build
	virtual/perl-Test-Simple
	>=dev-perl/Test-Deep-0.087
	dev-perl/Test-NoWarnings
	dev-perl/Test-Pod
	dev-perl/Test-Pod-Coverage
	dev-perl/UNIVERSAL-require
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
