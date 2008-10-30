# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

MODULE_AUTHOR=ASH
inherit perl-module

DESCRIPTION="Load mix-ins or components to your C3-based class."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	dev-perl/Class-C3
	dev-perl/Class-Inspector
	dev-perl/Test-Exception
"

