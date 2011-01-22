# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=STEVAN
MODULE_VERSION="0.04"
inherit perl-module

DESCRIPTION="An extension to the Excel::Template module"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	dev-perl/Excel-Template
	dev-perl/Template-Toolkit
	dev-perl/IO-String
	>=dev-perl/Moose-0.18
	>=dev-perl/MooseX-Param-0.10
	dev-perl/Test-Deep
	dev-perl/Spreadsheet-ParseExcel
"
DEPEND="
	dev-perl/Test-Exception
	virtual/perl-Module-Build
	${RDEPEND}
"
SRC_TEST="do"
