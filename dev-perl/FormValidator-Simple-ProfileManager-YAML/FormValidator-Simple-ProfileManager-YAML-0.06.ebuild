# Copyright Daniel Westermann-Clark <daniel at acceleration dot net>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="YAML profile manager for FormValidator::Simple"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/H/HO/HORIUCHI/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="amd64 x86"
RESTRICT="nomirror"

IUSE=""
RDEPEND="dev-lang/perl
	>=dev-perl/yaml-0.58"
DEPEND="${RDEPEND}
	test? ( >=virtual/perl-Test-Simple-0.32 )"
