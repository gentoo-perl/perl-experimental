# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=GFUJI
MODULE_VERSION=0.13
inherit perl-module

DESCRIPTION="Traces memory leaks"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	$(comment CORE ">=Exporter 5.57 5.570.0")
	>=virtual/perl-Test-Simple-0.62 $(comment 0.620.0)
	>=dev-lang/perl-5.8.1
"
DEPEND="
	${COMMON_DEPEND}
	$(comment CONFIG REQUIRES)
	>=virtual/perl-ExtUtils-MakeMaker-6.42 $(comment 6.420.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
