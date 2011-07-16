# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=FLORA
MODULE_VERSION="1.16"
inherit perl-module

DESCRIPTION="provides screen dump of Perl data."
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

comment() { echo ""; }

COMMON_DEPEND="
	$(comment Devel-Peek)
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.31
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
