# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=GBARR
inherit perl-module

DESCRIPTION="Restrict which sub are exported by a role"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND="
	>=dev-perl/Moose-0.72
"
RDEPEND="${DEPEND}"
SRC_TEST="do"
