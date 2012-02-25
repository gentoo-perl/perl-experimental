# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=BOOK
MODULE_VERSION=0.25
inherit perl-module

DESCRIPTION="HTTP proxy"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=dev-perl/libwww-perl-2.0.0
	>=dev-perl/HTTP-Daemon-1.250.0
"
DEPEND="${RDEPEND}
	>=virtual/perl-Module-Build-0.360.0
"

SRC_TEST=online
