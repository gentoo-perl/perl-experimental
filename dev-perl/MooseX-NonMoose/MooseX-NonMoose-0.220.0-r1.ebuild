# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=DOY
MODULE_VERSION=0.22
inherit perl-module

DESCRIPTION="easy subclassing of non-Moose classes"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
COMMON_DEPEND="
	>=dev-perl/Moose-1.15 $(comment 1.150.0)
	dev-perl/List-MoreUtils
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.31
	${COMMON_DEPEND}
	test? (
		dev-perl/Test-Fatal
		>=virtual/perl-Test-Simple-0.88 $(comment 0.880.0)
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
