# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="Release tests making sure correct line endings are used"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Dist-Zilla-4.101.540
	dev-perl/Moose
	dev-perl/Test-EOL
	dev-perl/namespace-autoclean
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-File-Temp
	virtual/perl-Test-Simple
	>=virtual/perl-ExtUtils-MakeMaker-6.56
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
