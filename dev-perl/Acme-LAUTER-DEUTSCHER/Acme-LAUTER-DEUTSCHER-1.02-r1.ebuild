# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Make your program's output indistinguishable from someone yelling German"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/I/IA/IAN/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~alpha amd64 ~hppa ~ia64 ~mips ppc ~ppc64 ~sparc x86"
RESTRICT="nomirror"

IUSE=""
RDEPEND="dev-lang/perl
	>=dev-perl/Lingua-Translate-0.08"
DEPEND="${RDEPEND}"