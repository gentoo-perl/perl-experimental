# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=JQUELIN
MODULE_VERSION=1.103030
inherit perl-module

DESCRIPTION="common tests to check syntax of your modules
"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	dev-perl/Moose
	dev-perl/Dist-Zilla
"
DEPEND="
	virtual/perl-File-Temp
	>=virtual/perl-Module-Build-0.36.01
	virtual/perl-Scalar-List-Utils
	>=virtual/perl-Test-Simple-0.94
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
