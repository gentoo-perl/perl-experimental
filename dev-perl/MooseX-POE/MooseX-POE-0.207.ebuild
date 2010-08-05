# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=PERIGRIN
inherit perl-module

DESCRIPTION="The Illicit Love Child of Moose and POE"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	>=dev-perl/Moose-0.90
	>=dev-perl/POE-1.004
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-Test-Simple-0.90
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
