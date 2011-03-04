# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=DOY
MODULE_VERSION=0.19
inherit perl-module

DESCRIPTION="easy subclassing of non-Moose classes"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
	>=dev-perl/Moose-1.15
	dev-perl/List-MoreUtils
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.31
	${COMMON_DEPEND}
	test? ( dev-perl/Test-Fatal )
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
