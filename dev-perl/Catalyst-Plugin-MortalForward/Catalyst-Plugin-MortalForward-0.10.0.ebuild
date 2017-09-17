# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=YANNK
MODULE_VERSION=0.01
inherit perl-module

DESCRIPTION="Make forward() to throw exception"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-perl/Catalyst-Runtime
"
DEPEND="$RDEPEND"

SRC_TEST=do
