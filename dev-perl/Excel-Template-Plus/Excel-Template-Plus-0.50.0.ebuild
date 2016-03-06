# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=STEVAN
MODULE_VERSION="0.05"
inherit perl-module

DESCRIPTION="An extension to the Excel::Template module"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	dev-perl/Excel-Template
	dev-perl/Template-Toolkit
	dev-perl/IO-String
	>=dev-perl/Moose-0.180.0
	>=dev-perl/MooseX-Param-0.10
	dev-perl/Test-Deep
	dev-perl/Spreadsheet-ParseExcel
"
DEPEND="
	dev-perl/Test-Exception
	dev-perl/Module-Build
	${RDEPEND}
"
