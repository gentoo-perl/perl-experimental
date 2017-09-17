# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=TMTM
MODULE_VERSION=2.42
inherit perl-module

DESCRIPTION="Produce HTML form elements for database columns"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
PATCHES=(
	"${FILESDIR}/${MODULE_VERSION}/rt-63623.patch"
)
# HTML::Element -> HTML::Tree
RDEPEND="
	>=dev-perl/Class-DBI-0.940.0
	>=dev-perl/DBI-1.210.0
	dev-perl/HTML-Tree
	dev-perl/Class-DBI-Plugin-Type
"
DEPEND="$RDEPEND"
PERL_RM_FILES=(
	t/pod-coverage.t
	t/pod.t
)
SRC_TEST=do
