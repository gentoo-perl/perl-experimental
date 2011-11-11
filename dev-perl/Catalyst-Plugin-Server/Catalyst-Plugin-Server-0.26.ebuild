# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
MODULE_AUTHOR=KANE
inherit perl-module

DESCRIPTION="Base Server plugin for RPC-able protocols"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS=""
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Catalyst-Runtime-5.660.0
	<=dev-perl/RPC-XML-0.67
	dev-perl/MRO-Compat
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
