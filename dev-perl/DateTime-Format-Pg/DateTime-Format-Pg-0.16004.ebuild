# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=DMAKI
inherit perl-module

DESCRIPTION="Parse and format PostgreSQL dates and times"

IUSE="test"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-perl/DateTime-0.10
	>=dev-perl/DateTime-Format-Builder-0.72
	>=dev-perl/DateTime-TimeZone-0.05
"
DEPEND="${RDEPEND}
	test? (
		virtual/perl-Test-Simple
	)
"
SRC_TEST="do"
