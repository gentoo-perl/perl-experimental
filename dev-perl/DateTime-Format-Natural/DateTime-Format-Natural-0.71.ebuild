# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

MODULE_AUTHOR=SCHUBIGER
inherit perl-module

DESCRIPTION="Create machine readable date/time with natural parsing logic"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

DEPEND="
	dev-perl/DateTime
	dev-perl/Date-Calc
	dev-perl/Params-Validate
	dev-perl/List-MoreUtils
"
