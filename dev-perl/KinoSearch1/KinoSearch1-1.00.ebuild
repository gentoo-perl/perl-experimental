# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=CREAMYG
inherit perl-module

DESCRIPTION="search engine library"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	virtual/perl-IO-Compress
	>=dev-perl/Lingua-Stem-Snowball-0.94
	>=dev-perl/Lingua-StopWords-0.02
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-File-Spec
	virtual/perl-Storable
	virtual/perl-Module-Build
	virtual/perl-ExtUtils-CBuilder
	virtual/perl-ExtUtils-ParseXS
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
