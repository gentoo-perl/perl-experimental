# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=ZENOG
inherit perl-module

DESCRIPTION="vi keyboard for Padre"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	>=app-editors/padre-0.37
"
