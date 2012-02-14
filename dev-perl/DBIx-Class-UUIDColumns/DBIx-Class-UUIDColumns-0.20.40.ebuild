# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=CLACO
MODULE_VERSION="0.02004"
inherit perl-module

DESCRIPTION="Implicit uuid columns"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/DBIx-Class-0.07005
	dev-perl/Data-UUID
"
DEPEND="${RDEPEND}"
SRC_TEST="do"
