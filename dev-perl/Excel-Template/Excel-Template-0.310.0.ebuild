# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=JEGADE
MODULE_VERSION="0.31"
inherit perl-module

DESCRIPTION="Excel::Template"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	dev-perl/IO-stringy
	>=dev-perl/Spreadsheet-WriteExcel-0.42
	>=dev-perl/XML-Parser-0.01
"
DEPEND="
	>=dev-perl/Test-Exception-0.21
	>=dev-perl/Test-Deep-0.95.0
	${RDEPEND}
"
