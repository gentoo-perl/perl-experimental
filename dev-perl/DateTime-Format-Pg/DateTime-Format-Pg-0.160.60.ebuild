# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=DMAKI
MODULE_VERSION=0.16006
inherit perl-module

DESCRIPTION="Parse and format PostgreSQL dates and times"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

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
