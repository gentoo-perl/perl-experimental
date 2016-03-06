# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=FLORA
MODULE_VERSION=0.001003
inherit perl-module

DESCRIPTION="Make selected sub calls evaluate at compile time"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/B-Hooks-OP-Check-EntersubForCV-0.30.0
"
DEPEND="${RDEPEND}
	dev-perl/ExtUtils-Depends
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
	test? (
		virtual/perl-Test-Simple
	)
"
