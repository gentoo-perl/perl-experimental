# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
MODULE_AUTHOR=MRAMBERG
MODULE_VERSION=0.19
inherit perl-module

DESCRIPTION="Fast plugins with instantiation"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
PERL_RM_FILES=(
	t/02pod.t
	t/03podcoverage.t
)
RDEPEND="
	dev-perl/UNIVERSAL-require
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
