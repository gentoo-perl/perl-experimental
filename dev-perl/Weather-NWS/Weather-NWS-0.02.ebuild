# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Object interface to the NWS Web services"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/J/JM/JMCADA/weather/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="amd64 x86"
RESTRICT="nomirror"

IUSE="test"
RDEPEND="dev-lang/perl
	dev-perl/Class-Std
	dev-perl/Readonly
	dev-perl/SOAP-DateTime
	dev-perl/libwww-perl"
DEPEND="${RDEPEND}
	test? (
		>=dev-perl/Test-Pod-1.14
		>=dev-perl/Test-Pod-Coverage-1.04
		virtual/perl-Test-Simple
	)"
