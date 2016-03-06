# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=MHX
MODULE_VERSION=2.03
inherit perl-module

DESCRIPTION="System V IPC constants and system calls"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND=""
DEPEND="
	${COMMON_DEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.45
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
