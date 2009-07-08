# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Support for creating standard inside-out classes"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/D/DM/DMUEY/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="amd64 x86"
RESTRICT="mirror"
SRC_TEST="do"

IUSE="test"
RDEPEND="dev-lang/perl
	virtual/perl-Scalar-List-Utils
	virtual/perl-version"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
