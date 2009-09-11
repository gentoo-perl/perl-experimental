# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=GWYN
inherit perl-module

DESCRIPTION="Parse patch files containing unified and standard diffs"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND=""
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
