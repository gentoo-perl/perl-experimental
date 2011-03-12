# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="3"
MODULE_AUTHOR=APEIRON
MODULE_VERSION="0.27"
inherit perl-module

DESCRIPTION="A glimpse at an Enlightened Perl (Date handling)"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+datetime +datetiny +timetiny +datetimetiny +timeparsedate"

comment() { echo ''; }

COMMON_DEPEND="
	datetime? ( dev-perl/DateTime )
	datetiny? ( dev-perl/Date-Tiny )
	timetiny? ( dev-perl/Time-Tiny )
	datetimetiny? ( dev-perl/DateTime-Tiny )
	timeparsedate? ( dev-perl/Time-modules $(comment Time::ParseDate)  )
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
