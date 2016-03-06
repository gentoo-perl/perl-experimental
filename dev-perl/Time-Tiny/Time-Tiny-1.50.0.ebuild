# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=ADAMK
MODULE_VERSION=1.05
inherit perl-module

DESCRIPTION="A time object with as little code as possible"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
PERL_RM_FILES=(
	t/97_meta.t
	t/98_pod.t
	t/99_pmv.t
)
RDEPEND=""
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		>=virtual/perl-Test-Simple-0.470.0
	)
"
