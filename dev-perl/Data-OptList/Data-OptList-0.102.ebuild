# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

MODULE_AUTHOR=RJBS
inherit perl-module

DESCRIPTION="parse and validate simple name/value option pairs"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="r"
DEPEND="
	dev-perl/Sub-Install
	dev-perl/Params-Util
"

