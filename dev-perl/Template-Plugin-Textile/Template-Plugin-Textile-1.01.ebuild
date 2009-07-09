# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Textile plugin for the Template Toolkit"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/M/MA/MARKF/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~alpha amd64 ~hppa ~ia64 ~mips ppc ~ppc64 ~sparc x86"
RESTRICT="nomirror"

IUSE=""
RDEPEND="dev-lang/perl
	>=dev-perl/Template-Toolkit-2.00
	>=dev-perl/Text-Textile-0.05"
DEPEND="virtual/perl-Module-Build
	${RDEPEND}"
