# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=RJBS
MODULE_VERSION=2.101461
inherit perl-module

DESCRIPTION="an MVP config reader for .ini files"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	dev-perl/Config-INI
	dev-perl/Moose
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Test-Simple
	>=virtual/perl-ExtUtils-MakeMaker-6.52
	>=dev-perl/Config-MVP-2
"
RDEPEND="
	${COMMON_DEPEND}
"
