# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.11
inherit perl-module

DESCRIPTION='Subroutine signatures with no source filter'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
# Test::More -> Test-Simple
RDEPEND="
	>=dev-perl/B-Hooks-EndOfScope-0.80.0
	>=dev-perl/B-Hooks-OP-Check-0.170.0
	>=dev-perl/B-Hooks-OP-PPAddr-0.30.0
	>=dev-perl/B-Hooks-Parser-0.120.0
	virtual/perl-XSLoader
"
DEPEND="
	${RDEPEND}
	>=dev-perl/ExtUtils-Depends-0.302.0
	virtual/perl-ExtUtils-MakeMaker
	test? (
		virtual/perl-File-Spec
		virtual/perl-Test-Simple
	)
"
