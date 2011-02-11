# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=STEVE
MODULE_VERSION="0.22"
inherit perl-module

DESCRIPTION="Perl module to generate random strings based on a pattern"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""

COMMON_DEPEND=""

DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Module-Build
	virtual/perl-Test-Simple
"
RDEPEND="
	${COMMON_DEPEND}
"

SRC_TEST="do"
