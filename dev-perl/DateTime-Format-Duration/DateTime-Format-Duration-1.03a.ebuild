# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

S="${WORKDIR}/${PN}-1.03"

DESCRIPTION="Format and parse DateTime::Durations"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/R/RI/RICKM/${P}.tgz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="amd64 x86"
RESTRICT="nomirror"
SRC_TEST="do"

IUSE="test"
RDEPEND="dev-lang/perl
	>=dev-perl/DateTime-0.30
	dev-perl/Params-Validate"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
