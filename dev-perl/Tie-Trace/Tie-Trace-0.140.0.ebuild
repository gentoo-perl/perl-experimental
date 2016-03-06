# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=KTAT
MODULE_VERSION=0.14
inherit perl-module

DESCRIPTION="easy print debugging with tie, for watching variable"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
PERL_RM_FILES=(
	t/boilerplate.t
	t/pod.t
	t/pod-coverage.t
)
RDEPEND="
	dev-perl/PadWalker
"
DEPEND="
	${RDEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.880.0
	)
"
