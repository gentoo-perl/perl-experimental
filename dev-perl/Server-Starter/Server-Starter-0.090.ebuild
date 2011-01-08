# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=KAZUHO
MODULE_VERSION=0.09
inherit perl-module

DESCRIPTION="a superdaemon for hot-deploying server programs"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
	virtual/perl-Getopt-Long
	dev-perl/List-MoreUtils
	dev-perl/Proc-Wait3
	dev-perl/Scope-Guard
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		dev-perl/Test-SharedFork
		>=dev-perl/Test-TCP-0.110
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
