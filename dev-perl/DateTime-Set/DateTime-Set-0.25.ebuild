# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

MODULE_AUTHOR=FGLOCK
inherit perl-module

DESCRIPTION="Datetime sets and set math"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

DEPEND=">=dev-perl/DateTime-0.12
	>=dev-perl/Set-Infinite-0.59
	dev-perl/Params-Validate"
