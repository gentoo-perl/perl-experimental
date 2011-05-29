# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=RJBS
MODULE_VERSION=0.100050
inherit perl-module

DESCRIPTION="helper routines for using Sub::Exporter to build methods"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	>=dev-perl/Sub-Exporter-0.978
	dev-perl/Sub-Name
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
