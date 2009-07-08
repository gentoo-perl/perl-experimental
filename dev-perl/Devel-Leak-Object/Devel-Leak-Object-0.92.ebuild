# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Detect leaks of objects"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/A/AD/ADAMK/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="amd64 x86"
RESTRICT="nomirror"
SRC_TEST="do"

IUSE="test"
RDEPEND="dev-lang/perl
	>=virtual/perl-Scalar-List-Utils-1.19"
DEPEND="${RDEPEND}
	test? ( >=virtual/perl-Test-Simple-0.42 )"
