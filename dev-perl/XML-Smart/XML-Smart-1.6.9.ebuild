# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

MODULE_AUTHOR=GMPASSOS
inherit perl-module

DESCRIPTION="A smart, easy and powerful way to access/create XML files/data"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-perl/Object-MultiType"
DEPEND="${RDEPEND}"

SRC_TEST=do
