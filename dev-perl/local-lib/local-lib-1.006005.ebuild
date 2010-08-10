# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=GETTY
inherit perl-module

DESCRIPTION="create and use a local lib/ for perl modules with PERL5LIB"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
COMMON_DEPEND="
	>=virtual/perl-CPAN-1.80
	virtual/perl-ExtUtils-CBuilder
	>=virtual/perl-ExtUtils-Install-1.43
	virtual/perl-ExtUtils-ParseXS
	>=virtual/perl-Module-Build-0.28
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
