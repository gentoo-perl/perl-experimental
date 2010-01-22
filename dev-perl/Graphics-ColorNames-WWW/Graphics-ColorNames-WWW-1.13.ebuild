# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=CFAERBER
inherit perl-module

DESCRIPTION="WWW color names and equivalent RGB values"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Graphics-ColorNames-0.32
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Test-Simple
	dev-perl/Test-NoWarnings
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
