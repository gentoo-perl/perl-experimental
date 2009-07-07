# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="A POE Filter for parsing XML"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/N/NP/NPEREZ/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~alpha amd64 ~hppa ~ia64 ~mips ppc ~ppc64 ~sparc x86"
RESTRICT="nomirror"
SRC_TEST="do"

IUSE=""
RDEPEND=">=dev-lang/perl-5.8.1
	>=dev-perl/POE-0.34_pre1
	>=virtual/perl-Scalar-List-Utils-1.18
	>=dev-perl/XML-SAX-0.14
	>=dev-perl/XML-SAX-Expat-Incremental-0.04
	>=dev-perl/Filter-Template-1.01"
DEPEND="virtual/perl-Module-Build
	${RDEPEND}"
