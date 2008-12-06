# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

MODULE_AUTHOR=BOBTFISH
inherit perl-module

DESCRIPTION="Convert Markdown syntax to (X)HTML"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	dev-perl/List-MoreUtils
	dev-perl/File-Slurp
"

