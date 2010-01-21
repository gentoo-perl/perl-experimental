# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=HDP
inherit perl-module

DESCRIPTION="inside-out objects with Moose"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Class-MOP-0.80
	>=dev-perl/Moose-0.73
	dev-perl/Hash-Util-FieldHash-Compat
	>=dev-perl/namespace-clean-0.11
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
