# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="A quick and easy way to compose and run tests with useful output"
HOMEPAGE="http://search.cpan.org/dist/Test-Lazy/"
SRC_URI="mirror://cpan/authors/id/R/RK/RKRIMEN/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~alpha amd64 ~hppa ~ia64 ~mips ppc ~ppc64 ~sparc x86"
RESTRICT="mirror"
SRC_TEST="do"

IUSE="test"
RDEPEND="dev-lang/perl
	dev-perl/Test-Deep
	dev-perl/Class-Accessor
	virtual/perl-Scalar-List-Utils"
DEPEND="virtual/perl-Module-Build
	${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
