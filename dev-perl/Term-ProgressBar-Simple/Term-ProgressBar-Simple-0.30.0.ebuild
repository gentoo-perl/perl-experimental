# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=EVDB
MODULE_VERSION=0.03
inherit perl-module

DESCRIPTION="simpler progress bars"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
PERL_RM_FILES=(
	t/pod-coverage.t
	t/pod.t
)
RDEPEND="
	dev-perl/Term-ProgressBar-Quiet
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
