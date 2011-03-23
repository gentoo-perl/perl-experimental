# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=CREAMYG
MODULE_VERSION="0.165"
inherit perl-module

DESCRIPTION="search engine library"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	virtual/perl-Module-Build
	virtual/perl-IO-Compress
	>=dev-perl/Lingua-Stem-Snowball-0.94
	>=dev-perl/Lingua-StopWords-0.02
"
DEPEND="${RDEPEND}"
SRC_TEST="do"
