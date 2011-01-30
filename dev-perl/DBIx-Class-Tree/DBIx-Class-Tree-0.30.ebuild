# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=BLUEFEET
MODULE_VERSION="0.03000"
inherit perl-module

DESCRIPTION="Manipulate and anaylze tree structured data."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/DBIx-Class-0.08100
	>=dev-perl/DBD-SQLite-0.42
"
DEPEND="${RDEPEND}"
SRC_TEST=do
