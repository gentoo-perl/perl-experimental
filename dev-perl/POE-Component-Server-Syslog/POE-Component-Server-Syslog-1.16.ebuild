# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Syslog server ability for POE"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/B/BI/BINGOS/${P}.tar.gz"
LICENSE="BSD"

SLOT="0"
KEYWORDS="~alpha amd64 ~hppa ~ia64 ~mips ppc ~ppc64 ~sparc x86"
RESTRICT="mirror"
SRC_TEST="do"

IUSE="test"
RDEPEND=">=dev-lang/perl-5.6.1
	>=dev-perl/POE-0.24
	dev-perl/Params-Validate
	dev-perl/Time-modules"
DEPEND="${RDEPEND}
	test? ( >=virtual/perl-Test-Simple-0.47 )"
