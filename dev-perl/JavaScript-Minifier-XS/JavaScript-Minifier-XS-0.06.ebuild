# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2

MODULE_AUTHOR=GTERMARS
inherit perl-module

DESCRIPTION="XS based JavaScript minifier"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
DEPEND="
	test? (
		virtual/perl-Test-Simple
	)
"
RDEPEND=""

SRC_TEST="do"
