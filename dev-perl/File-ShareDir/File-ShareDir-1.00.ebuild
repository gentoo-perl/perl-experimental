# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

MODULE_AUTHOR=ADAMK
inherit perl-module

DESCRIPTION="Locate per-dist and per-module shared files"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="
	>=dev-perl/Params-Util-0.07
	>=dev-perl/Class-Inspector-1.12
"

