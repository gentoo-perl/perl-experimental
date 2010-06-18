# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=RJBS
inherit perl-module

DESCRIPTION="an MVP config reader for .ini files"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND=""
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Test-Simple
	>=virtual/perl-ExtUtils-MakeMaker-6.52
	dev-perl/Config-INI
	>=dev-perl/Config-MVP-2
	dev-perl/Moose
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
