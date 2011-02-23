# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=JHANNAH
MODULE_VERSION=0.16
inherit perl-module

DESCRIPTION="Simple sub-process management for asynchronous tasks"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	dev-perl/DateTime
	>=dev-perl/Moose-0.90
	>=dev-perl/POE-1.004
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-Test-Simple-0.42
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
