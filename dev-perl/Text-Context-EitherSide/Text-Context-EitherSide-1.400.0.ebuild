# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=TMTM
MODULE_VERSION=1.4
inherit perl-module

DESCRIPTION="Get n words either side of search keywords"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
PERL_RM_FILES=(
	t/pod-coverage.t
	t/pod.t
)
RDEPEND=""
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
