# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=JQUELIN
MODULE_VERSION=1.092870
MY_PN=Dist-Zilla-Plugin-CompileTests
inherit perl-module

DESCRIPTION="common tests to check syntax of your modules
"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	virtual/perl-Test-Simple
	dev-perl/Moose
	dev-perl/Dist-Zilla
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
