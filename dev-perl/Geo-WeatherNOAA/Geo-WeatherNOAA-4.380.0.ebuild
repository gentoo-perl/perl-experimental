# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=MSOLOMON
MODULE_VERSION=4.38
inherit perl-module

DESCRIPTION="Perl extension for interpreting the NOAA weather data"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="dev-perl/Tie-IxHash
	dev-perl/libwww-perl"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
