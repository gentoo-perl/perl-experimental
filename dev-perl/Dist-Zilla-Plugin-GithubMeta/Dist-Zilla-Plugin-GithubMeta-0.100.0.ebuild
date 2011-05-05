# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=BINGOS
MODULE_VERSION="0.10"
inherit perl-module

DESCRIPTION="Automatically include GitHub meta information in META.yml"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Dist-Zilla-4.101.582
	>=virtual/perl-IPC-Cmd-0.58
	>=dev-perl/Moose-1.07
	>=dev-perl/MooseX-Types-URI-0.02
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.56
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
