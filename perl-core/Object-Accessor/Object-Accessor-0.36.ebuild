# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=BINGOS
inherit perl-module

DESCRIPTION="Interface to create per object accessors"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="virtual/perl-Params-Check"
DEPEND="${RDEPEND}"

SRC_TEST=do
