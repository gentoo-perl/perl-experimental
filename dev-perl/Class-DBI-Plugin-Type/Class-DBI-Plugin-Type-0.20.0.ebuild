# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=SIMON
MODULE_VERSION=0.02
inherit perl-module

DESCRIPTION="Determine type information for columns"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	dev-perl/Class-DBI
	>=dev-perl/DBI-0.940.0
"
RDEPEND="$DEPEND"

SRC_TEST=do
