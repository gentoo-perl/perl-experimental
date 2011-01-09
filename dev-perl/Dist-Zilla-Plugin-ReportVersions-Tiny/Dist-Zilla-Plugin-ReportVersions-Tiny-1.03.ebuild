# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=DANIELP
inherit perl-module

DESCRIPTION="reports dependency versions during testing"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Dist-Zilla-3.101390
	dev-perl/Moose
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-File-Temp
	dev-perl/Test-Differences
	dev-perl/Test-Exception
	dev-perl/Test-MockObject
	>=virtual/perl-Test-Simple-0.88
	dev-perl/Test-Warn
	>=virtual/perl-ExtUtils-MakeMaker-6.56
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
