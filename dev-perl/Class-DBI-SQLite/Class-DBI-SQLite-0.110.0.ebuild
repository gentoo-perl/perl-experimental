# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=0.11
inherit perl-module

DESCRIPTION="Extension to Class::DBI for sqlite"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=virtual/perl-Test-Simple-0.320.0
	>=dev-perl/Class-DBI-0.850.0
	>=dev-perl/Ima-DBI-0.270.0
	>=dev-perl/DBD-SQLite-0.70.0"
DEPEND="${RDEPEND}"

SRC_TEST=do
