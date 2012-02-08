# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=ZENOG
MODULE_VERSION=0.23.0
inherit perl-module

DESCRIPTION="vi keyboard for Padre"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	>=app-editors/padre-0.37
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${PN}-0.23"
