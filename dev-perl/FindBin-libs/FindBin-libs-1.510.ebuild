# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=LEMBARK
MODULE_VERSION=1.51
inherit perl-module

DESCRIPTION="Locate and 'use lib' directories along the path of \$FindBin::Bin"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

SRC_TEST="do"
