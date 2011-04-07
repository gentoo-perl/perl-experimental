# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=RJBS
MODULE_VERSION=0.200000
inherit perl-module

DESCRIPTION="write-once, read-many attributes for Moose"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	>=dev-perl/Moose-0.90 $(comment Moose::Role 0.900.0)
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.31

	dev-perl/Moose
	dev-perl/Test-Fatal
	$(comment Test::Moose is Moose)
	>=virtual/perl-Test-Simple-0.96 $(comment Test::More 0.960.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
