# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=SWALTERS
inherit perl-module

DESCRIPTION="Methods for core built-in functions in primitive types"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/autobox-0.11
"
DEPEND="
	${RDEPEND}
"
