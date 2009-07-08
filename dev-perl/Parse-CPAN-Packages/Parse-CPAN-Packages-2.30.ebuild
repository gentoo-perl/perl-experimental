# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Parse 02packages.details.txt.gz"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/L/LB/LBROCARD/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~alpha amd64 ~hppa ~ia64 ~mips ppc ~ppc64 ~sparc x86"
RESTRICT="nomirror"
SRC_TEST="do"

IUSE="test"
RDEPEND="dev-lang/perl
	virtual/perl-Compress-Zlib
	dev-perl/CPAN-DistnameInfo
	dev-perl/Moose
	virtual/perl-version"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
