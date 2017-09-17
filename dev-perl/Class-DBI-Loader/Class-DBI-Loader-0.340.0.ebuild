# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=DMAKI
MODULE_VERSION=0.34
inherit perl-module

DESCRIPTION="Dynamic definition of Class::DBI sub classes."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=virtual/perl-Test-Simple-0.320.0
	>=dev-perl/Class-DBI-0.890.0
	>=dev-perl/DBI-1.300.0
	dev-perl/Lingua-EN-Inflect
	virtual/perl-Text-Balanced
	"
DEPEND="$RDEPEND"
PERL_RM_FILES=(
	t/02pod.t
	t/03podcoverage.t
)
SRC_TEST=do
