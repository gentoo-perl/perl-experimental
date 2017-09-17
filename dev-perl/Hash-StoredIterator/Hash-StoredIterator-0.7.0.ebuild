# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=EXODIST
MODULE_VERSION=0.007
inherit perl-module

DESCRIPTION='Functions for accessing a hashes internal iterator.'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RDEPEND=""
DEPEND="
	${RDEPEND}
	>=dev-perl/Module-Build-0.400.0
	virtual/perl-ExtUtils-CBuilder
	>=virtual/perl-ExtUtils-ParseXS-3.150.0
	test? (
		>=dev-perl/Fennec-2.004
	)
"
