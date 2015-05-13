# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=GFUJI
MODULE_VERSION=1.09
inherit perl-module

DESCRIPTION="Extend your attribute interfaces for Mouse"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Mouse-0.820.0
"
# Test::More -> Test-Simple
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	test? (
		>=dev-perl/Any-Moose-0.130.0
		>=dev-perl/Test-Fatal-0.3.0
		>=virtual/perl-Test-Simple-0.880.0
	)
"
