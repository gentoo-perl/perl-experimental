# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=TMTM
MODULE_VERSION=3.7
inherit perl-module

DESCRIPTION="Handle highlighting search result context snippets"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
PERL_RM_FILES=(
	t/pod-coverage.t
	t/pod.t
)
RDEPEND="
	dev-perl/HTML-Parser
	>=dev-perl/Text-Context-EitherSide-1.100.0
	>=dev-perl/UNIVERSAL-require-0.30.0
"
DEPEND="
	${RDEPEND}
	virtual/perl-Test-Simple
"
