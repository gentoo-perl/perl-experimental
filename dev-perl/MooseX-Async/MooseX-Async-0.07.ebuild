# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=PERIGRIN
inherit perl-module

DESCRIPTION="The Orphanange of Asynchronous Love Children"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/Moose-0.56
	>=dev-perl/MooseX-AttributeHelpers-0.13
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-Test-Simple-0.42
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
