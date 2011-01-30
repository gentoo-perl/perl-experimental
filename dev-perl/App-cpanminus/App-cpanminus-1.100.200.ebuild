# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION="1.1002"
inherit perl-module

DESCRIPTION="get, unpack, build and install modules from CPAN"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=virtual/perl-Module-Build-0.36
	>=virtual/perl-ExtUtils-MakeMaker-6.31
	>=virtual/perl-ExtUtils-Install-1.46
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
