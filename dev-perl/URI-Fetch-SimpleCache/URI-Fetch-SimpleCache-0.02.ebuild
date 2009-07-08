# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="URI::Fetch extension with local cache"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/N/NE/NEKOKAK/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="amd64 x86"

IUSE=""
RDEPEND="dev-lang/perl
	dev-perl/URI-Fetch
	dev-perl/Cache-Cache"
DEPEND="${RDEPEND}"
