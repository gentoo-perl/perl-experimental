# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Edit or create a single vCard (RFC 2426)"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/L/LL/LLAP/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~alpha amd64 ~hppa ~ia64 ~mips ppc ~ppc64 ~sparc x86"
RESTRICT="mirror"
SRC_TEST="do"

IUSE="test"
RDEPEND="dev-lang/perl
	>=dev-perl/Text-vFile-asData-0.05
	>=dev-perl/File-Slurp-9999.04
	>=virtual/perl-MIME-Base64-3.07"
DEPEND="${RDEPEND}
	test? ( >=virtual/perl-Test-Simple-0.1 )"
