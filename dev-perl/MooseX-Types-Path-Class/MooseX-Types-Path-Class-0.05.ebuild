# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=THEPLER
inherit perl-module

DESCRIPTION="A Path::Class type library for Moose"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	dev-perl/Class-MOP
	>=dev-perl/Moose-0.39
	>=dev-perl/MooseX-Types-0.04
	>=dev-perl/Path-Class-0.016
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
