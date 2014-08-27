# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=MRAMBERG
MODULE_VERSION=1.33
inherit perl-module

DESCRIPTION="Plugin for Prototype"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.700.600
	>=dev-perl/HTML-Prototype-1.48
"
DEPEND="$RDEPEND"

PERL_RM_FILES=(
	t/02pod.t
	t/03podcoverage.t
)
SRC_TEST=do
