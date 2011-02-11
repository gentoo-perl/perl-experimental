# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=0.19
inherit perl-module

DESCRIPTION="Clear, readable syntax for command line processing"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
	>=dev-perl/Exception-Class-1.23
	>=virtual/perl-Storable-2.16
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		>=dev-perl/Exception-Class-TryCatch-1.100
		>=virtual/perl-Test-Simple-0.62
	)
	>=virtual/perl-ExtUtils-MakeMaker-6.56
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
