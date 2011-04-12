# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=SWALTERS
MODULE_VERSION="0.6"
inherit perl-module

DESCRIPTION="Methods for core built-in functions in primitive types"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/autobox-0.110.0
"
DEPEND="
	${RDEPEND}
"
