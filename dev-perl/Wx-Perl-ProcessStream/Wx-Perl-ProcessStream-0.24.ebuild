# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=MDOOTSON
WX_GTK_VER="2.8"
inherit wxwidgets perl-module

DESCRIPTION="access IO of external processes via events"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	x11-libs/wxGTK:2.8
	dev-perl/wxperl"
DEPEND="${RDEPEND}"

#SRC_TEST=do
