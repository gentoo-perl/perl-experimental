# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=RBO
inherit perl-module

DESCRIPTION="Excel::Template"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-perl/IO-stringy
	>=dev-perl/Spreadsheet-WriteExcel-0.42
	>=dev-perl/XML-Parser-0.01
"
DEPEND="${RDEPEND}
	test? ( >=dev-perl/Test-Exception-0.21
		>=dev-perl/Test-Deep-0.095 )"
SRC_TEST=do
