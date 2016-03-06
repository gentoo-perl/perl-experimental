# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=CREAMYG
MODULE_VERSION="1.01"
inherit perl-module

DESCRIPTION="search engine library"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	virtual/perl-IO-Compress
	>=dev-perl/Lingua-Stem-Snowball-0.940.0
	>=dev-perl/Lingua-StopWords-0.02
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-File-Spec
	virtual/perl-Storable
	dev-perl/Module-Build
	virtual/perl-ExtUtils-CBuilder
	virtual/perl-ExtUtils-ParseXS
"
RDEPEND="
	${COMMON_DEPEND}
"
