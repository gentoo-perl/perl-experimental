# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=JAWNSY
MODULE_VERSION="1.011"
#MODULE_DZIL_TRIAL=1
inherit perl-module

DESCRIPTION="Author test that validates a package MANIFEST"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
comment() { echo '';  }
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Module-Manifest-0.07 $(comment 0.70.0)
	virtual/perl-Test-Simple $(comment Test::Builder)
"
DEPEND="
	${COMMON_DEPEND}
	>=dev-perl/Test-NoWarnings-0.084 $(comment 0.84.0)
	>=virtual/perl-Test-Simple-0.72
	>=virtual/perl-ExtUtils-MakeMaker-6.31 $(comment 6.310.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
