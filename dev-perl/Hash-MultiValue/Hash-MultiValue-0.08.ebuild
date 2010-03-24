# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=MIYAGAWA
inherit perl-module

DESCRIPTION="Store multiple values per key"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="virtual/perl-Filter"
DEPEND="${RDEPEND}"

SRC_TEST=do
