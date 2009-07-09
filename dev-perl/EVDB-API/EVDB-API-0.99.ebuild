# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Perl interface to EVDB public API"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/R/RA/RADCLIFF/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~alpha amd64 ~hppa ~ia64 ~mips ppc ~ppc64 ~sparc x86"
RESTRICT="nomirror"
SRC_TEST="do"

IUSE="json test xml yaml"
RDEPEND="dev-lang/perl
	virtual/perl-Digest-MD5
	dev-perl/libwww-perl
	dev-perl/XML-Simple
	>=virtual/perl-Module-Pluggable-3.0
	json? ( || (
		dev-perl/JSON
		>=dev-perl/YAML-Syck-0.40
	) )
	xml? ( dev-perl/XML-Twig )
	yaml? ( || (
		dev-perl/yaml
		dev-perl/YAML-Syck
	) )"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
