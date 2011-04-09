# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=RJBS
MODULE_VERSION=0.100000
inherit perl-module

DESCRIPTION="allow a module's pod to contain Pod::Coverage hints"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	dev-perl/Pod-Coverage
	dev-perl/Pod-Eventual
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
