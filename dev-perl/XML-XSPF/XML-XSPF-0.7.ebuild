# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="API for reading & writing XSPF Playlists"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/D/DA/DANIEL/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~alpha amd64 ~hppa ~ia64 ~mips ppc ~ppc64 ~sparc x86"
RESTRICT="nomirror"

IUSE=""
RDEPEND="dev-lang/perl
	>=dev-perl/Class-Accessor-0.20
	>=dev-perl/TimeDate-1.1
	>=dev-perl/HTML-Parser-3.46
	>=dev-perl/XML-Parser-2.30
	>=dev-perl/XML-Writer-0.600"
DEPEND="${RDEPEND}"
