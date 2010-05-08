# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=VPIT
inherit perl-module

DESCRIPTION="Act on upper scopes."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="virtual/perl-XSLoader"
DEPEND=""

SRC_TEST=do
