# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=RJBS
MODULE_VERSION="0.093001"
inherit perl-module

DESCRIPTION="a transformer to replace 'wikidoc' data regions with Pod5 elements"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	dev-perl/Moose
	>=dev-perl/Moose-Autobox-0.10
	>=dev-perl/Pod-Elemental-0.092941
	>=dev-perl/Pod-WikiDoc-0.180.0
	dev-perl/namespace-autoclean
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
