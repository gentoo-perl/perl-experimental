# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=FLORA
MODULE_VERSION=0.06
inherit perl-module

DESCRIPTION="Debug memory leaks in Catalyst applications"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
PERL_RM_FILES=(
	t/release-pod-syntax.t
	t/release-pod-coverage.t
)
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.800.0
	>=dev-perl/Devel-Cycle-1.110.0
	>=dev-perl/Moose-0.900.0
	dev-perl/MooseX-Types
	>=dev-perl/PadWalker-1.800.0
	dev-perl/Task-Weaken
	dev-perl/Text-SimpleTable
	dev-perl/namespace-autoclean
	>=dev-perl/namespace-clean-0.50.0
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.110.0
	test? (
		>=virtual/perl-Test-Simple-0.880.0
	)
"
