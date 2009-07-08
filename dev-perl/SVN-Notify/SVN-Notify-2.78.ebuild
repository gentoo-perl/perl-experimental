# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Subversion activity notification"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/D/DW/DWHEELER/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~alpha amd64 ~hppa ~ia64 ~mips ppc ~ppc64 ~sparc x86"
RESTRICT="mirror"
SRC_TEST="do"

IUSE="smtp test"
RDEPEND=">=dev-lang/perl-5.6.0
	dev-util/subversion
	>=virtual/perl-Getopt-Long-2.34
	virtual/perl-PodParser
	dev-perl/HTML-Parser
	smtp? ( virtual/perl-libnet )"
DEPEND=">=virtual/perl-Module-Build-0.27.01
	${RDEPEND}
	virtual/perl-File-Spec
	test? ( >=virtual/perl-Test-Simple-0.17 )"
