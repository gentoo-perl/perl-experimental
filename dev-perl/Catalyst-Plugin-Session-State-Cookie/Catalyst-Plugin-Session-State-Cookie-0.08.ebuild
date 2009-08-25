# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=NUFFIN
inherit perl-module

DESCRIPTION="Catalyst plugin: maintain session IDs using cookies"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	>=dev-perl/Catalyst-Plugin-Session-0.06
	>=dev-perl/Test-MockObject-1.01
"
RDEPEND="${DEPEND}"
SRC_TEST=do
