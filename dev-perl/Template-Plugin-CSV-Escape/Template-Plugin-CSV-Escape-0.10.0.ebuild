# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=MIYAZAKI
MODULE_VERSION=0.01
inherit perl-module

DESCRIPTION="CSV escape a string"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/Template-Toolkit-2.150.0
"
DEPEND="$RDEPEND
	virtual/perl-Test-Simple
"
SRC_TEST=do
