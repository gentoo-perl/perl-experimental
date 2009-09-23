# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=DAGOLDEN
inherit perl-module

DESCRIPTION="Set autoflush from the command line"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	>=dev-perl/IO-CaptureOutput-1.08
	>=virtual/perl-Test-Simple-0.62
"
RDEPEND="${DEPEND}"
SRC_TEST="do"
