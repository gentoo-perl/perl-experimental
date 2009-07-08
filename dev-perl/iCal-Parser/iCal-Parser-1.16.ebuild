# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Parse iCalendar files into a data structure"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/R/RF/RFRANKEL/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~alpha amd64 ~hppa ~ia64 ~mips ppc ~ppc64 ~sparc x86"
RESTRICT="nomirror"
SRC_TEST="do"

IUSE="test"
RDEPEND="dev-lang/perl
	>=virtual/perl-IO-1.22
	dev-perl/IO-String
	>=dev-perl/FreezeThaw-0.43
	>=dev-perl/DateTime-Format-ICal-0.08
	>=dev-perl/Text-vFile-asData-0.02"
DEPEND="${RDEPEND}
	test? ( >=virtual/perl-Test-Simple-0.54 )"
