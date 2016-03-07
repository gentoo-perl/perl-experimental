# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=AMBS
MODULE_VERSION=2.13
inherit perl-module

DESCRIPTION="easy database connections for Dancer2 applications"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=dev-perl/Dancer2-0.151.0
	>=dev-perl/Dancer-Plugin-Database-Core-0.120.0
"

DEPEND="
	${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	dev-perl/HTTP-Message
	>=dev-perl/Plack-1.3.200
	virtual/perl-Test-Simple
"
