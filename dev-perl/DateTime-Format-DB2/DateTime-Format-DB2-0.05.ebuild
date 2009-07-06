# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module eutils

DESCRIPTION="Parse and format DB2 dates and times"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/J/JR/JROBINSON/${P}.tar.gz"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="amd64 x86"
RESTRICT="nomirror"
SRC_TEST="do"

IUSE=""
RDEPEND="dev-lang/perl
	dev-perl/DateTime
	dev-perl/DateTime-Format-Builder"
DEPEND="${RDEPEND}"
