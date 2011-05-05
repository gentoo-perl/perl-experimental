# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=RJBS
MODULE_VERSION=0.101621
inherit perl-module

DESCRIPTION="read multiple hunks of data out of your DATA section"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo '';}
COMMON_DEPEND="
	>=dev-perl/MRO-Compat-0.09 $(comment 0.90.0)
	>=dev-perl/Sub-Exporter-0.979 $(comment 0.979.0)
"
DEPEND="
	$(comment CDEP)
	>=virtual/perl-ExtUtils-MakeMaker-6.56 $(comment 6.560.0)
	$(comment BDEP)
	>=virtual/perl-Test-Simple-0.96 $(comment Test::More 0.960.0)
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
