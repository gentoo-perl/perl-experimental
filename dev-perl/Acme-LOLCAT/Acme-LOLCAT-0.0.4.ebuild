# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="SPEEK LIEK A LOLCATZ"
HOMEPAGE="http://search.cpan.org/dist/Acme-LOLCAT/"
SRC_URI="mirror://cpan/authors/id/K/KC/KCOWGILL/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="amd64 x86"
RESTRICT="nomirror"
SRC_TEST="do"

IUSE="test"
RDEPEND=">=dev-lang/perl-5.6.1"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
