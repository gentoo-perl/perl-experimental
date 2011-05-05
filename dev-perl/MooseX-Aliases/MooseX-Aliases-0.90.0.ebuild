# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=DOY
MODULE_VERSION=0.09
inherit perl-module

DESCRIPTION="easy aliasing of methods and attributes in Moose"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
	>=dev-perl/Moose-1.09
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.31
	${COMMON_DEPEND}
	test? (
		dev-perl/Test-Fatal
		dev-perl/Test-Requires
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
