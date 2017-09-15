# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=DROLSKY
MODULE_VERSION=0.03
inherit perl-module

DESCRIPTION="Build a URI from a set of named parameters"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	dev-perl/Params-Validate
	>=dev-perl/URI-1.220.0
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Test-Simple
	dev-perl/Module-Build
"
RDEPEND="
	${COMMON_DEPEND}
"
