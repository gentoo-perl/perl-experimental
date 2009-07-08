# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Web traversal engine for robots and agents"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/K/KV/KVENTIN/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~alpha amd64 ~hppa ~ia64 ~mips ppc ~ppc64 ~sparc x86"
RESTRICT="nomirror"
SRC_TEST="do"

IUSE=""
RDEPEND="dev-lang/perl
	dev-perl/libwww-perl
	dev-perl/HTML-Tree
	dev-perl/URI
	dev-perl/HTML-Parser"
DEPEND="${RDEPEND}"
