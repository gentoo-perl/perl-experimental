# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="3"
MODULE_AUTHOR=JAWNSY
MODULE_VERSION="1.009"
inherit perl-module

DESCRIPTION="Author test that validates a package MANIFEST"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=virtual/perl-Test-Simple-0.72
	>=dev-perl/Module-Manifest-0.07
"
DEPEND="
	${COMMON_DEPEND}
	>=dev-perl/Test-NoWarnings-0.084
	virtual/perl-Module-Build
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
