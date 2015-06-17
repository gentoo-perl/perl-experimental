# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=GWYN
MODULE_VERSION="0.1001"
inherit perl-module

DESCRIPTION="Parse patch files containing unified and standard diffs"

SLOT="0"

KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND=""
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
