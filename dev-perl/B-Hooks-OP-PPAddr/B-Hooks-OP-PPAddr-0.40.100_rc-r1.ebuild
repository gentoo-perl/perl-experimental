# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_VERSION=0.04_01
MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="Hook into opcode execution"

SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	virtual/perl-parent
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
	>=dev-perl/ExtUtils-Depends-0.302.0
"
