# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=PEVANS
MODULE_VERSION=0.20
inherit perl-module

DESCRIPTION="RFC 2553's getaddrinfo and getnameinfo functions"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="virtual/perl-XSLoader"
DEPEND="${RDEPEND}
	>=dev-perl/ExtUtils-CChecker-0.60.0
	virtual/perl-Module-Build"

SRC_TEST="do"
