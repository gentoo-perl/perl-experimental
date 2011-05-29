# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=JQUELIN
MODULE_VERSION=1.102280
inherit perl-module

DESCRIPTION="tests to check your code against best practices"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
	>=dev-perl/Data-Section-0.4.0
	>=dev-perl/Dist-Zilla-4.0
	dev-perl/Moose
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-File-Temp
	>=virtual/perl-Module-Build-0.36.01
	virtual/perl-Scalar-List-Utils
	test? (
		>=virtual/perl-Test-Simple-0.94
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
