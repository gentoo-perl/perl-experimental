# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="OOP for the del.icio.us API"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/A/AS/ASCOPE/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~alpha amd64 ~hppa ~ia64 ~mips ppc ~ppc64 ~sparc x86"
RESTRICT="mirror"
SRC_TEST="do"

IUSE="test"
RDEPEND="dev-lang/perl
	dev-perl/libwww-perl
	>=dev-perl/yaml-0.35
	dev-perl/URI
	>=dev-perl/log-dispatch-2
	>=dev-perl/XML-Simple-2
	>=virtual/perl-Time-HiRes-1.65
	>=dev-perl/IO-stringy-2.1
	>=virtual/perl-File-Spec-0.8
	>=dev-perl/TimeDate-1.16
	>=dev-perl/Config-Simple-2
	dev-perl/Crypt-SSLeay"
DEPEND="virtual/perl-Module-Build
	${RDEPEND}
	test? ( >=virtual/perl-Test-Simple-0.47 )"
