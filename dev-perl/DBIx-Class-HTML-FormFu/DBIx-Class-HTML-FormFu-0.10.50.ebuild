# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=CFRANKS
MODULE_VERSION=0.01005
inherit perl-module

DESCRIPTION="DEPRECATED - use HTML::FormFu::Model::DBIC instead"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	dev-perl/DBIx-Class
	dev-perl/HTML-FormFu
"
DEPEND="$RDEPEND"
SRC_TEST=do
