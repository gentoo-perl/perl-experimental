# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=MSOLOMON
inherit perl-module

DESCRIPTION="Perl extension for interpreting the NOAA weather data"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE=""
RDEPEND="dev-perl/Tie-IxHash
	dev-perl/libwww-perl"
DEPEND="${RDEPEND}"
