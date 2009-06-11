# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=STEVAN
inherit perl-module

DESCRIPTION="Simple role to provide a standard param method"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/Moose-0.32
"
DEPEND="
	>=dev-perl/Test-Exception-0.21
	${RDEPEND}
"
