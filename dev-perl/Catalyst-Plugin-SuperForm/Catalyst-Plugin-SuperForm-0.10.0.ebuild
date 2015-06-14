# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=MRAMBERG
MODULE_VERSION=0.01
inherit perl-module

DESCRIPTION="Create sticky HTML forms"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.200.0
	>=dev-perl/HTML-SuperForm-1.04"
DEPEND="$RDEPEND
	dev-perl/Module-Build"

PERL_RM_FILES=(
	t/02pod.t
	t/03podcoverage.t
)
SRC_TEST=do
