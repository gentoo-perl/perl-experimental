# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=FLORA
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
	>=dev-perl/MooseX-Method-Signatures-0.29
	>=dev-perl/MooseX-Types-VariantTable-0.03
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
