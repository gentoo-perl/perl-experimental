# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION="1.11"
inherit perl-module

DESCRIPTION="Syntactic try/catch sugar for use with Exception::Class"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	dev-perl/Exception-Class
"
RDEPEND="$DEPEND"
SRC_TEST="do"
