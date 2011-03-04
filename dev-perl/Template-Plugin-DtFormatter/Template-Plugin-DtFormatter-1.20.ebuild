# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=ARTHAS
inherit perl-module

DESCRIPTION="Easily create formatted string from DateTime objects"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	virtual/perl-Module-Build
	>=dev-perl/Template-Toolkit-2.20
	>=dev-perl/DateTime-0.32
	>=dev-perl/DateTime-Format-Strptime-1.70.0
"
DEPEND="${RDEPEND}"
SRC_TEST=do
