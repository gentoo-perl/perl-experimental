# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=RJBS
MODULE_VERSION="0.100472"
inherit perl-module

DESCRIPTION="write-once, read-many attributes for Moose"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
PATCHES=(
	"${FILESDIR}/${MODULE_VERSION}/0001-Fix-for-Moose-1.900-but-should-work-since-Class-MOP-.patch"
);
COMMON_DEPEND="
	dev-perl/Try-Tiny
	>=dev-perl/Moose-1.900
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.31
	test? (
		>=virtual/perl-Test-Simple-0.96
		dev-perl/Test-Fatal
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
