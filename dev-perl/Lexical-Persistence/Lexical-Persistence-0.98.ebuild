# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

MODULE_AUTHOR=RCAPUTO
inherit perl-module

DESCRIPTION="Persistent lexical variable values for arbitrary calls."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	>=dev-perl/Devel-LexAlias-0.04
	>=dev-perl/PadWalker-1.1
"
