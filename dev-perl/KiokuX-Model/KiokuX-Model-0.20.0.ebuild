# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=NUFFIN
MODULE_VERSION=0.02
inherit perl-module

DESCRIPTION="A simple application specific wrapper for KiokuDB"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RDEPEND="
	>=dev-perl/KiokuDB-0.240.0
	>=dev-perl/MooseX-StrictConstructor-0.80.0
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
