# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="3"
MODULE_AUTHOR=FLORA
MODULE_VERSION="20110228.00"
inherit perl-module

DESCRIPTION="a DEPRECATED Perl code profiler"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	virtual/perl-XSLoader
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.31
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
