# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=DOY
inherit perl-module

DESCRIPTION="inside-out objects with Moose"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	>=dev-perl/Class-MOP-0.80
	>=dev-perl/Moose-0.94
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
