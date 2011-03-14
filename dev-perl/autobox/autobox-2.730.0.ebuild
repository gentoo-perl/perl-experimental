# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=CHOCOLATE
MODULE_VERSION=2.73
inherit perl-module

DESCRIPTION="Call methods on native types"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/Scope-Guard-0.20
"
DEPEND="
	${RDEPEND}
"
SRC_TEST=do
