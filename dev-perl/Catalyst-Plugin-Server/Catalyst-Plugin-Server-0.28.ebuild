# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=JLMARTIN
inherit perl-module

DESCRIPTION="Base Server plugin for RPC-able protocols"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS=""
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Catalyst-Runtime-5.660
	<=dev-perl/RPC-XML-0.67
	dev-perl/MRO-Compat
	dev-perl/Clone-Fast
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
