# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=CONVERTER
MODULE_VERSION="0.05"
inherit perl-module

DESCRIPTION="User role-based authorization action class"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RDEPEND="
	dev-perl/Catalyst-Runtime
	dev-perl/Moose
	dev-perl/Catalyst-Controller-ActionRole
	dev-perl/namespace-autoclean
"
DEPEND="
	${DEPEND}
"
SRC_TEST=do
