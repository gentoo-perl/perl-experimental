# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.002
inherit perl-module

DESCRIPTION="designate tests only run by module authors"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RDEPEND="
	dev-perl/Module-Install
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
