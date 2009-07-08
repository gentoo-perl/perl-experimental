# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module versionator

MY_P="${PN}-$(delete_version_separator 2)"
S="${WORKDIR}/${MY_P}"

DESCRIPTION="XML::RSS with XML::LibXML"
HOMEPAGE="http://search.cpan.org/dist/{PN}/"
SRC_URI="mirror://cpan/authors/id/D/DM/DMAKI/${MY_P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~alpha amd64 ~hppa ~ia64 ~mips ppc ~ppc64 ~sparc x86"
RESTRICT="nomirror"
SRC_TEST="do"

IUSE="test"
RDEPEND="dev-lang/perl
	dev-perl/Class-Accessor
	dev-perl/DateTime-Format-Mail
	dev-perl/DateTime-Format-W3CDTF
	dev-perl/UNIVERSAL-require
	>=dev-perl/XML-LibXML-1.66"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
