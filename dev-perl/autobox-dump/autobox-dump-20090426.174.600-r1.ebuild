# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=COWENS
MODULE_VERSION=20090426.1746
inherit perl-module

DESCRIPTION="human/perl readable strings from the results of an EXPR"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND=""
comment() { echo ''; }
DEPEND="
	${COMMON_DEPEND}
	$(comment BUILD REQUIRES)
	virtual/perl-Test-Simple
	dev-perl/autobox
	$(comment CONFIG REQUIRES)
	dev-perl/Module-Build
"
RDEPEND="
	${COMMON_DEPEND}
"
