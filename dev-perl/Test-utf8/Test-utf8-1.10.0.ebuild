# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=MARKF
MODULE_VERSION=1.01
inherit perl-module

DESCRIPTION='handy utf8 tests'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# r:Test::Builder t:Test::Builder::Tester -> Test-Simple
RDEPEND="
	virtual/perl-Test-Simple
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
	test? (
		>=virtual/perl-Test-Simple-0.720.0
	)
"