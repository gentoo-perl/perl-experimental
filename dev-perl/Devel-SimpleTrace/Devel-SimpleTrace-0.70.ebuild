# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=SAPER
MODULE_VERSION="0.07"
inherit perl-module

DESCRIPTION="See where you code warns and dies using stack traces"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	virtual/perl-Module-Build
"
# Test
# Test-More
RDEPEND=""
# Data-Dumper
SRC_TEST="do"
