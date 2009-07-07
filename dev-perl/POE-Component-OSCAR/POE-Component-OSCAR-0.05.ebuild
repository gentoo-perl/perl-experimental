# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="A POE Component for the Net::OSCAR module "
HOMEPAGE="http://search.cpan.org/dist/POE-Component-OSCAR/"
SRC_URI="mirror://cpan/authors/id/D/DM/DMCC/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="amd64 x86"
RESTRICT="nomirror"
SRC_TEST="do"

IUSE=""
RDEPEND="dev-lang/perl
	>=dev-perl/Net-OSCAR-0.62
	>=virtual/perl-Time-HiRes-0.01
	>=dev-perl/POE-0.28
	>=dev-perl/Filter-Template-1.02"
DEPEND="${RDEPEND}"
