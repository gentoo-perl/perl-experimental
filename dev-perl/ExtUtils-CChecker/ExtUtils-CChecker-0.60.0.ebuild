# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=PEVANS
MODULE_VERSION=0.06
inherit perl-module

DESCRIPTION="configure-time utilities for using C headers, libraries, or OS features"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=""
DEPEND="${RDEPEND}
	virtual/perl-Module-Build
	test? (
		dev-perl/Test-Exception
	)"

SRC_TEST="do"
