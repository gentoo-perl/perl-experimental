# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.102000
inherit perl-module

DESCRIPTION="transform :list regions into =over/=back to save typing"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RDEPEND="
	dev-perl/Moose
	>=dev-perl/Pod-Elemental-0.101.620
	dev-perl/namespace-autoclean
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		dev-perl/Test-Differences
		>=virtual/perl-Test-Simple-0.960.0
	)
"
