# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=FLORA
MODULE_VERSION="0.04"
inherit perl-module

DESCRIPTION="Multi Method Dispatch based on Moose type constraints"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Devel-Declare-0.004000
	dev-perl/Devel-PartialDump
	dev-perl/Moose
	>=dev-perl/MooseX-Method-Signatures-0.150
	>=dev-perl/MooseX-Types-VariantTable-0.02
	dev-perl/Sub-Install
	dev-perl/aliased
	dev-perl/namespace-autoclean
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
