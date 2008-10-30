# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

MODULE_AUTHOR=BTROTT
inherit perl-module

DESCRIPTION="Smart URI fetching/caching"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	dev-perl/libwww-perl
	dev-perl/URI
	dev-perl/Class-ErrorHandler
"
