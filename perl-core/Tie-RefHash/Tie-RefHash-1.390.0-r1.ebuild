# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=FLORA
MODULE_VERSION=1.39
inherit perl-module

DESCRIPTION="Use references as hash keys"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RDEPEND=""
DEPEND="
	virtual/perl-ExtUtils-MakeMaker
	${RDEPEND}
"
SRC_TEST="do parallel"
