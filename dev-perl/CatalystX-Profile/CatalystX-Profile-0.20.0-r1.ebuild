# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=JJNAPIORK
MODULE_VERSION=0.02
inherit perl-module

DESCRIPTION="Profile your Catalyst application with Devel::NYTProf"

SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
comment() { true;}
COMMON_DEPEND="
	>=dev-perl/Catalyst-Runtime-5.800.200
	>=dev-perl/CatalystX-InjectComponent-0.24.0
	>=dev-perl/Devel-NYTProf-3.01 $(comment 3.10.0)
	>=dev-perl/Moose-0.930.0
	>=dev-perl/Sub-Identify-0.04 $(comment 0.40.0)
	>=dev-perl/namespace-autoclean-0.90.0
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.56 $(comment 6.560.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
