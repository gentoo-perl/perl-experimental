# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=ADAMK
inherit perl-module

DESCRIPTION="pure-OO reimplementation of dumpvar.pl"

SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND="virtual/perl-Scalar-List-Utils"
RDEPEND="${DEPEND}"

SRC_TEST=do
