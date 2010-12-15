# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=GBARR
inherit perl-module

DESCRIPTION="Extract distribution name and version from a distribution filename"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPENDS="virtual/perl-Test-Simple"
RDEPENDS=""

SRC_TEST="do"
