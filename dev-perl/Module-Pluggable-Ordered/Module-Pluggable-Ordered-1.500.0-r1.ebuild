# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=APEIRON
MODULE_VERSION="1.5"
inherit perl-module

DESCRIPTION="Call module plugins in a specified order"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=virtual/perl-Module-Pluggable-1.900.0
	dev-perl/UNIVERSAL-require
"
DEPEND="$RDEPEND"
SRC_TEST=do
