# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=LUKEC
MODULE_VERSION=0.09
inherit perl-module

DESCRIPTION="use mocked libraries in unit tests"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND=""
DEPEND="
	${COMMON_DEPEND}
	dev-perl/Test-Exception
	virtual/perl-Test-Simple
"
RDEPEND="
	${COMMON_DEPEND}
"
