# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=DIZ
inherit perl-module

DESCRIPTION="Convert common UTF-8 and Windows-1252 characters to their ASCII equivalents"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

COMMON_DEPEND="
	dev-perl/Encode-ZapCP1252
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"

SRC_TEST=do
