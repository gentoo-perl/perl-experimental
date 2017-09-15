# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=FLORA
MODULE_VERSION=0.01
inherit perl-module

DESCRIPTION="Force coercion when validating type constraints "

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	dev-perl/namespace-autoclean
	dev-perl/Moose
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
