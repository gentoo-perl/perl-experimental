# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="Sensible default end action."

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.70
	>=dev-perl/Data-Visitor-0.24
	dev-perl/MRO-Compat
"
DEPEND="
	dev-perl/HTTP-Request-AsCGI
	${RDEPEND}
"
