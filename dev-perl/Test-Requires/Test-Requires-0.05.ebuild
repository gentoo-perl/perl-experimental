# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=TOKUHIROM
inherit perl-module

DESCRIPTION="Checks to see if the module can be loaded"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=virtual/perl-Test-Simple-0.61"
DEPEND="${RDEPEND}"

SRC_TEST=do
