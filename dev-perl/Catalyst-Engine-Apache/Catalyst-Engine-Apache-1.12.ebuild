# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=AGRUNDMA
inherit perl-module

DESCRIPTION="Catalyst Apache Engines"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="dev-perl/Catalyst-Runtime"
DEPEND="${RDEPEND}"
SRC_TEST="do"
