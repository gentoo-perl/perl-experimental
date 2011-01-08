# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=BINGOS
MODULE_VERSION=0.38
inherit perl-module

DESCRIPTION="Interface to create per object accessors"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="virtual/perl-Params-Check"
DEPEND="${RDEPEND}"

SRC_TEST=do
