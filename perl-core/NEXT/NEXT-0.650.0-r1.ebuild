# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=FLORA
MODULE_VERSION=0.65
inherit perl-module

DESCRIPTION="Provide a pseudo-class NEXT (et al) that allows method redispatch"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RDEPEND=""
DEPEND="
	virtual/perl-ExtUtils-MakeMaker
	${RDEPEND}
"
SRC_TEST="do"
