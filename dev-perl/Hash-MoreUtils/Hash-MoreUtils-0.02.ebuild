# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=REHSACK
inherit perl-module

DESCRIPTION="Provide the stuff missing in Hash::Util"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND=""
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-Module-Build-0.36
	virtual/perl-Test-Simple
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
