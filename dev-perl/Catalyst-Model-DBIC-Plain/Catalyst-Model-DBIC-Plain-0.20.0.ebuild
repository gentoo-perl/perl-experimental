# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=GABB
MODULE_VERSION=0.02
inherit perl-module

DESCRIPTION="DBIC Model Class"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.0.0
	>=dev-perl/DBIx-Class-0.10.0
"
DEPEND="$RDEPEND"

src_prepare() {
	perl_rm_files "t/02pod.t" "t/03podcoverage.t"
	perl-module_src_prepare
}
SRC_TEST=do
