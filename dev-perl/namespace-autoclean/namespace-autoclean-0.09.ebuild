# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="Keep imports out of your namespace"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/namespace-clean-0.11
	>=dev-perl/Class-MOP-0.80
	>=dev-perl/B-Hooks-EndOfScope-0.07
"
DEPEND="
	${RDEPEND}
"
