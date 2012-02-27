# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="3"
MODULE_AUTHOR=MIKO
MODULE_VERSION="1.13"
inherit perl-module

DESCRIPTION="A debugging routine collection for minimally displaying variable values."
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=virtual/perl-Scalar-List-Utils-1.21
	>=dev-perl/Tie-IxHash-1.1
	>=dev-perl/MemHandle-0.60.0
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
