# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=LBROCARD
MODULE_VERSION="0.31"
inherit perl-module

DESCRIPTION="Automated driving and testing of terminal-based programs"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	dev-perl/Class-Accessor
	dev-perl/Expect-Simple
	virtual/perl-Test-Simple
"
DEPEND="
	dev-perl/Module-Build
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
