# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=CHOCOLATE
inherit perl-module

DESCRIPTION="Call methods on native types"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/Scope-Guard-0.03
"
DEPEND="
	${RDEPEND}
"
