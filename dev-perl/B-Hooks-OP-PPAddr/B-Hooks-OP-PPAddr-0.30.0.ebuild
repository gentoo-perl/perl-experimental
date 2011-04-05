# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_VERSION=0.03
MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="Hook into opcode execution"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	virtual/perl-parent
"
DEPEND="
	${COMMON_DEPEND}
	dev-perl/extutils-depends
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
