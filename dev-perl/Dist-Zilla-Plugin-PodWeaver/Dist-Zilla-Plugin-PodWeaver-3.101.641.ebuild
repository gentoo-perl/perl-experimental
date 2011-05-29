# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=RJBS
MODULE_VERSION=3.101641
inherit perl-module

DESCRIPTION="do horrible things to POD, producing better docs"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
	>=dev-perl/Dist-Zilla-4
	dev-perl/List-MoreUtils
	dev-perl/Moose
	dev-perl/Moose-Autobox
	dev-perl/PPI
	dev-perl/Pod-Elemental
	dev-perl/Pod-Elemental-PerlMunger
	>=dev-perl/Pod-Weaver-3.100.710
	dev-perl/namespace-autoclean
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.56
	dev-perl/File-Find-Rule
	test? (
		virtual/perl-Test-Simple
	)
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
