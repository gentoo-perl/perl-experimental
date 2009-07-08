# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Log messages via Jabber"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/A/AS/ASCOPE/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~alpha amd64 ~hppa ~ia64 ~mips ppc ~ppc64 ~sparc x86"
RESTRICT="mirror"

IUSE="test"
RDEPEND="dev-lang/perl
	>=dev-perl/log-dispatch-2.01
	>=dev-perl/Net-Jabber-1.26"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
