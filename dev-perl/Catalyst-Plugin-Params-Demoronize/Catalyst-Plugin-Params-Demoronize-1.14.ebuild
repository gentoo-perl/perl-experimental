# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
MODULE_AUTHOR=DIZ
inherit perl-module

DESCRIPTION="Convert common UTF-8 and Windows-1252 characters to their ASCII equivalents"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

COMMON_DEPEND="
	dev-perl/Encode-ZapCP1252
	dev-perl/MRO-Compat
"
DEPEND="
	${COMMON_DEPEND}
	dev-perl/Test-MockObject
	>=virtual/perl-Test-Simple-0.42
	dev-perl/Test-Pod
	>=virtual/perl-ExtUtils-MakeMaker-6.56
"
RDEPEND="
	${COMMON_DEPEND}
"

SRC_TEST=do
