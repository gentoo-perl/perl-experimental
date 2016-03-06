# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=4.006
inherit perl-module

DESCRIPTION="do horrible things to POD, producing better docs"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Dist-Zilla-5
	dev-perl/List-MoreUtils
	dev-perl/Moose
	dev-perl/PPI
	>=dev-perl/Pod-Elemental-PerlMunger-0.100.0
	>=dev-perl/Pod-Weaver-4.0.0
	dev-perl/namespace-autoclean
"
DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		dev-perl/File-Find-Rule
		>=virtual/perl-Test-Simple-0.960.0
	)
"
