# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=ASH
inherit perl-module

DESCRIPTION="Load mix-ins or components to your C3-based class."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	dev-perl/MRO-Compat
	dev-perl/Class-Inspector
	>=dev-perl/Class-C3-0.20
"
DEPEND="
    ${RDEPEND}
	dev-perl/Test-Exception
"

