# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=CYCLES
inherit perl-module

DESCRIPTION="Profile your Catalyst application with Devel::NYTProf"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Devel-NYTProf-3.01
	>=dev-perl/namespace-autoclean-0.09
	>=virtual/perl-ExtUtils-MakeMaker-6.11
	>=dev-perl/Catalyst-Runtime-5.80020
	>=dev-perl/CatalystX-InjectComponent-0.024
	>=dev-perl/Moose-0.93
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
