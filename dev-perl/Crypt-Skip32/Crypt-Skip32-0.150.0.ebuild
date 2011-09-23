# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=ESH
MODULE_VERSION="0.15"
inherit perl-module

DESCRIPTION="32-bit block cipher based on Skipjack"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=""
DEPEND="virtual/perl-Module-Build
	test? ( >=dev-perl/Test-NoWarnings-0.084
		dev-perl/Test-Distribution )"

SRC_TEST=do
