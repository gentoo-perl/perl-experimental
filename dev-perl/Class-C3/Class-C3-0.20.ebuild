# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="A pragma to use the C3 method resolution order algortihm"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	>=dev-perl/Algorithm-C3-0.06
	>=dev-perl/Class-C3-XS-0.07
"

