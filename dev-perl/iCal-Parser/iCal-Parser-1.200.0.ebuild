# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=RFRANKEL
MODULE_VERSION=1.20
inherit perl-module

DESCRIPTION="Parse iCalendar files into a data structure"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	>=virtual/perl-IO-1.220.0
	dev-perl/IO-String
	>=dev-perl/DateTime-Format-ICal-0.80.0
	>=dev-perl/Text-vFile-asData-0.20.0
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? ( >=virtual/perl-Test-Simple-0.540.0
		>=dev-perl/FreezeThaw-0.430.0
	)
"
