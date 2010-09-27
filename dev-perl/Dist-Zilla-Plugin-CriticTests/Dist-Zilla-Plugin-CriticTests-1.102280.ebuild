# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=JQUELIN
inherit perl-module

DESCRIPTION="tests to check your code against best practices"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Data-Section-0.004
	>=dev-perl/Dist-Zilla-4.0
	dev-perl/Moose
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-File-Temp
	>=virtual/perl-Module-Build-0.36.01
	virtual/perl-Scalar-List-Utils
	>=virtual/perl-Test-Simple-0.94
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
