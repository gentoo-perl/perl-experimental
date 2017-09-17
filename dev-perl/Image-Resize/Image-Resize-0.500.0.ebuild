# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=SHERZODR
MODULE_VERSION=0.5
inherit perl-module

DESCRIPTION="Simple image resizer using GD"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	dev-perl/GD
"
DEPEND="$RDEPEND"

SRC_TEST=do
