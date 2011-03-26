# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=APEIRON
MODULE_VERSION="0.28"
inherit perl-module

DESCRIPTION="A glimpse at an Enlightened Perl (modules for Excel / CSV files)"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+csv-xs +parseexcelsimple +writeexcelsimple"
COMMON_DEPEND="
	csv-xs? ( dev-perl/Text-CSV_XS )
	parseexcelsimple? ( dev-perl/Spreadsheet-ParseExcel-Simple )
	writeexcelsimple? ( dev-perl/Spreadsheet-WriteExcel-Simple )
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
