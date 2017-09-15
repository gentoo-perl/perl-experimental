# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=MHX
MODULE_VERSION=2.04
inherit perl-module

DESCRIPTION="System V IPC constants and system calls"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RDEPEND=""
DEPEND="
	virtual/perl-ExtUtils-MakeMaker
	${RDEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.450.0
	)
"
SRC_TEST="do"
