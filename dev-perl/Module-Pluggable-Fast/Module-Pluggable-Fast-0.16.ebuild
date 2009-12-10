# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=MRAMBERG
inherit perl-module

DESCRIPTION="Fast plugins with instantiation"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	dev-perl/UNIVERSAL-require
"
DEPEND="
	${RDEPEND}
"
SRC_TEST="do"
