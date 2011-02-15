# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=BARBIE
MODULE_VERSION="0.16"
inherit perl-module

DESCRIPTION="Validation of the META.yml file in a distribution"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=virtual/perl-Test-Simple-0.70
	>=dev-perl/Test-YAML-Valid-0.03
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
