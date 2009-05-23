# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=APEIRON
inherit perl-module

DESCRIPTION="create and use a local lib/ for perl modules with PERL5LIB"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
COMMON_DEPEND="
	>=virtual/perl-CPAN-1.80
	virtual/perl-ExtUtils-CBuilder
	virtual/perl-ExtUtils-ParseXS
	>=virtual/perl-Module-Build-0.28
"
# >=virtual/perl-ExtUtils-MakeMaker-6.42
DEPEND="
		${COMMON_DEPEND}
"
# >=virtual/perl-ExtUtils-MakeMaker-6.31
RDEPEND="
		${COMMON_DEPEND}
"
SRC_TEST="do"
