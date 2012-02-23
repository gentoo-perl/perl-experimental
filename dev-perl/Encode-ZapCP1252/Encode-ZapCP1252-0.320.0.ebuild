# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=DWHEELER
MODULE_VERSION="0.32"
inherit perl-module

DESCRIPTION="Zap Windows Western Gremlins"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND=">=virtual/perl-Module-Build-0.36"

SRC_TEST=do
