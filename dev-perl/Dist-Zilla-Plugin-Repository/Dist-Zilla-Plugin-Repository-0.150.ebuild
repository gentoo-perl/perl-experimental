# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=FAYLAND
MODULE_VERSION="0.15"
inherit perl-module

DESCRIPTION="Automatically sets repository URL from svn/svk/Git checkout for Dist::Zilla"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Dist-Zilla-4.102.340
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.52
	>=virtual/perl-Test-Simple-0.88
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
