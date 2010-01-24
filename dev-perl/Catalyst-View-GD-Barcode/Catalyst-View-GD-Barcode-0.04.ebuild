# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=YANA
inherit perl-module

DESCRIPTION="Make it easy to use GD::Barcode in Catalyst's View."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.57
	>=dev-perl/GD-Barcode-1.15
"
DEPEND="
	${RDEPEND}
"
SRC_TEST="do"
