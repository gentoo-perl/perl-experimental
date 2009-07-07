# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Makes using SSL in the world of POE easy"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/A/AP/APOCAL/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~alpha amd64 ~hppa ~ia64 ~mips ppc ~ppc64 ~sparc x86"
RESTRICT="nomirror"

IUSE="test"
RDEPEND="dev-lang/perl
	>=dev-perl/Net-SSLeay-1.30"
DEPEND="virtual/perl-Module-Build
	${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
