# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
MODULE_AUTHOR=APEIRON
MODULE_VERSION=1.008000
inherit perl-module

DESCRIPTION="create and use a local lib/ for perl modules with PERL5LIB"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
COMMON_DEPEND="
	>=virtual/perl-CPAN-1.800
	>=virtual/perl-ExtUtils-Install-1.43
	>=virtual/perl-Module-Build-0.36
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.42
	${COMMON_DEPEND}
"
RDEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.31
	${COMMON_DEPEND}
"
SRC_TEST="do"
