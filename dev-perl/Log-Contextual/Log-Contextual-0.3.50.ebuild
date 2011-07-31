# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=FREW
MODULE_VERSION=0.00305
inherit perl-module

DESCRIPTION="Simple logging interface with a contextual log"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	dev-perl/Data-Dumper-Concise
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.42 $(comment 6.420.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
