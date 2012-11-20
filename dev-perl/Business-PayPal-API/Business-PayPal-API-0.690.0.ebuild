# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_VERSION=0.69
MODULE_AUTHOR=HEMBREED
inherit perl-module

DESCRIPTION="PayPal API"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	>=dev-perl/SOAP-Lite-0.670.0
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
