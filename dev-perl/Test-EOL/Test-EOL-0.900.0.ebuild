# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=FLORA
MODULE_VERSION="0.9"
inherit perl-module

DESCRIPTION="Check the correct line endings in your project"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	virtual/perl-File-Spec
	virtual/perl-Test-Simple
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-File-Temp
	>=virtual/perl-ExtUtils-MakeMaker-6.56
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
