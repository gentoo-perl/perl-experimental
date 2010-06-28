# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=KAZUHO
inherit perl-module

DESCRIPTION="a superdaemon for hot-deploying server programs"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	virtual/perl-Getopt-Long
	dev-perl/Proc-Wait3
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		>=dev-perl/Test-TCP-0.11
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
