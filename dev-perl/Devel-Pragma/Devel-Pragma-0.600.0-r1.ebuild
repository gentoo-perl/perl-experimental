# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=CHOCOLATE
MODULE_VERSION=0.60
inherit perl-module

DESCRIPTION='helper functions for developers of lexical pragmas'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
PERL_RM_FILES=(
	t/pod.t
)
RDEPEND="
	>=dev-perl/B-Hooks-OP-Annotation-0.440.0
	>=dev-perl/B-Hooks-OP-Check-0.190.0
	>=dev-perl/Lexical-SealRequireHints-0.7.0
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	>=dev-perl/ExtUtils-Depends-0.302.0
"
