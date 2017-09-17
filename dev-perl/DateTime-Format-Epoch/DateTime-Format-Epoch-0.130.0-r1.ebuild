# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=CHORNY
MODULE_VERSION=0.13
inherit perl-module

DESCRIPTION="Convert DateTimes to/from epoch seconds"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	>=dev-perl/DateTime-0.31 $(comment 0.310.0)
	>=virtual/perl-Math-BigInt-1.66 $(comment 1.660.0)
	dev-perl/Params-Validate
	>=dev-lang/perl-5.5.3
"
DEPEND="
	${COMMON_DEPEND}
	$(comment BUILD REQUIRES)
	virtual/perl-Test-Simple
	$(comment CONFIGURE REQUIRES)
	dev-perl/Module-Build
"
RDEPEND="
	${COMMON_DEPEND}
"
