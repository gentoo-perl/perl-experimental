# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.018
inherit perl-module

DESCRIPTION="simple .ini-file format"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Mixin-Linewise-0.001
	virtual/perl-IO
	dev-perl/IO-String
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-Test-Simple-0.96
	>=virtual/perl-ExtUtils-MakeMaker-6.56
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
