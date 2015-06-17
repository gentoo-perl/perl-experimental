# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=RJBS
MODULE_VERSION=0.102082
inherit perl-module

DESCRIPTION="build sprintf-like functions of your own"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMON_DEPEND="
	dev-perl/Params-Util
	dev-perl/Sub-Exporter
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.31
	${COMMON_DEPEND}
	test? ( >=virtual/perl-Test-Simple-0.90 )
"
RDEPEND="
	${COMMON_DEPEND}
"
