# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=BLBLACK
MODULE_VERSION=0.21
inherit perl-module

DESCRIPTION="Dynamic definition of DBIx::Class sub classes."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT="test" # https://rt.cpan.org/Ticket/Display.html?id=68565
IUSE=""
RDEPEND="
	>=virtual/perl-Test-Simple-0.320.0
	>=dev-perl/DBIx-Class-0.40.10
	>=dev-perl/DBI-1.300.0
	dev-perl/Lingua-EN-Inflect
	virtual/perl-Text-Balanced
	>=dev-perl/UNIVERSAL-require-0.100.0
	"
DEPEND="$RDEPEND"
PERL_RM_FILES=(
	t/02pod.t
	t/03podcoverage.t
)
SRC_TEST=do
