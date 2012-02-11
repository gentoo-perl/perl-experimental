# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION="0.05"
inherit perl-module

DESCRIPTION="Set autoflush from the command line"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/IO-CaptureOutput-1.08
	>=virtual/perl-Test-Simple-0.62
"
DEPEND="
	${DEPEND}
	virtual/perl-Module-Build
"
SRC_TEST="do"
