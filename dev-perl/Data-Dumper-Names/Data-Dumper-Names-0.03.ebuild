# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=OVID
inherit perl-module

DESCRIPTION="See your data in the nude"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	>=dev-perl/PadWalker-0.13
"
RDEPEND="${DEPEND}"
SRC_TEST="do"
