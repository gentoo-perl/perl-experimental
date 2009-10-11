# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2

MODULE_AUTHOR=KENTNL
inherit perl-module

DESCRIPTION="Automatic digest columns."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/DBIx-Class-0.06002
	>=dev-perl/Sub-Name-0.04
"
DEPEND="${RDEPEND}"
SRC_TEST="do"
