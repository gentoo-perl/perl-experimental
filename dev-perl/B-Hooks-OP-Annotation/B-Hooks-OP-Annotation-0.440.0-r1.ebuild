# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=CHOCOLATE
MODULE_VERSION=0.44
inherit perl-module

DESCRIPTION="annotate and delegate hooked OPs"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

PERL_RM_FILES=(
	t/pod.t
)

RDEPEND=""
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	>=dev-perl/ExtUtils-Depends-0.304.0
"
