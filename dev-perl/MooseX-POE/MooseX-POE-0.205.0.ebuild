# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=PERIGRIN
MODULE_VERSION="0.205"
inherit perl-module

DESCRIPTION="The Illicit Love Child of Moose and POE"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Moose-0.73
	>=dev-perl/MooseX-Async-0.07
	>=dev-perl/POE-1.004
	>=dev-perl/Sub-Name-0.04
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-Test-Simple-0.42
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
