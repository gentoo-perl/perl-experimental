# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=OVID
MODULE_VERSION="0.11"
inherit perl-module

DESCRIPTION="Test JSON data"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	>=dev-perl/JSON-Any-1.200.0
	>=dev-perl/Test-Differences-0.47
"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build
	test? (
		>=dev-perl/Test-Tester-0.107
	)
"
SRC_TEST="do"
