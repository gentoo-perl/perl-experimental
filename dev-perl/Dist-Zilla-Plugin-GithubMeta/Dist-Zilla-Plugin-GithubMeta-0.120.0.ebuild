# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=BINGOS
MODULE_VERSION=0.12
inherit perl-module

DESCRIPTION="Automatically include GitHub meta information in META.yml"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo '';}
COMMON_DEPEND="
	>=dev-perl/Dist-Zilla-4.101.582
	>=dev-perl/Dist-Zilla-1.7.0
	$(comment ^^ Dist::Zilla::Role::MetaProvider is 1.007)
	>=virtual/perl-IPC-Cmd-0.580 $(comment 0.580.0)
	>=dev-perl/Moose-1.07 $(comment 1.70.0)
	>=dev-perl/MooseX-Types-URI-0.02 $(comment 0.20.0)
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.56 $(comment 6.560.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
