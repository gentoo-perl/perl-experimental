# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=DOY
MODULE_VERSION=0.10
inherit perl-module

DESCRIPTION="easy aliasing of methods and attributes in Moose"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
COMMON_DEPEND="
>=dev-perl/Moose-1.09 $(comment 1.90.0)
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.56
	${COMMON_DEPEND}
	test? (
		>=dev-perl/Test-Fatal-0.003 $(comment 0.3.0)
		>=virtual/perl-Test-Simple-0.88 $(comment 0.880.0 Test::More)
		dev-perl/Test-Requires
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
