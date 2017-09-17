# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=SWALTERS
MODULE_VERSION=1.28
inherit perl-module

DESCRIPTION='Provide core functions to autoboxed scalars, arrays and hashes.'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/autobox-2.710.0
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.460.0
	test? (
		>=virtual/perl-Test-Simple-0.880.0
	)
"
