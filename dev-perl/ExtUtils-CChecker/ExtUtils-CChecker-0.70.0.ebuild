# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=PEVANS
MODULE_VERSION=0.07
inherit perl-module

DESCRIPTION="configure-time utilities for using C headers, libraries, or OS features"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

comment() { echo ''; }
RDEPEND="
	virtual/perl-ExtUtils-CBuilder
"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build
	test? (
		dev-perl/Test-Fatal
		virtual/perl-Test-Simple $(comment Test::More)
	)"

SRC_TEST="do"
