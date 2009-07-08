# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="SQL engine and DBI driver for CSV files"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/J/JZ/JZUCKER/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~alpha amd64 ~hppa ~ia64 ~mips ppc ~ppc64 ~sparc x86"
RESTRICT="nomirror"

IUSE=""
RDEPEND="dev-lang/perl
	>=dev-perl/DBI-1.42
	>=dev-perl/Text-CSV_XS-0.16
	>=dev-perl/SQL-Statement-0.1011"
DEPEND="${RDEPEND}"
