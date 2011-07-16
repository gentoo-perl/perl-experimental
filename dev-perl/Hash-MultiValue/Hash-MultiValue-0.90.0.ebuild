# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=0.09
inherit perl-module

DESCRIPTION="Store multiple values per key"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="virtual/perl-Filter"
DEPEND="
	${RDEPEND}
	virtual/perl-Test-Simple
"
SRC_TEST=do
