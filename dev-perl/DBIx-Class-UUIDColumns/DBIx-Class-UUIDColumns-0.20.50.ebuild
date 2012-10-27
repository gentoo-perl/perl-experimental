# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=CLACO
MODULE_VERSION="0.02005"
inherit perl-module

DESCRIPTION="Implicit uuid columns"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/DBIx-Class-0.70.50
	dev-perl/Data-UUID
	dev-perl/Class-Accessor-Grouped
"
DEPEND="${RDEPEND}"
SRC_TEST="do"
