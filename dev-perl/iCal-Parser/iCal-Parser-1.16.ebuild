# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=RFRANKEL
inherit perl-module

DESCRIPTION="Parse iCalendar files into a data structure"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND=">=virtual/perl-IO-1.22
	dev-perl/IO-String
	>=dev-perl/FreezeThaw-0.43
	>=dev-perl/DateTime-Format-ICal-0.08
	>=dev-perl/Text-vFile-asData-0.02"
DEPEND="${RDEPEND}
	test? ( >=virtual/perl-Test-Simple-0.54 )"
