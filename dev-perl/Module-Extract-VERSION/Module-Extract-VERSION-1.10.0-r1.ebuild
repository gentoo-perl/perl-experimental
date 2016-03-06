# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=BDFOY
MODULE_VERSION="1.01"
inherit perl-module

DESCRIPTION="Extract a module version without running code"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND=""
DEPEND="
	${COMMON_DEPEND}
	test? ( virtual/perl-Test-Simple )
"
RDEPEND="
	${COMMON_DEPEND}
"
