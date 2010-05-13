# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=ROBM
inherit perl-module

DESCRIPTION="Uses an mmap'ed file to act as a shared memory interprocess cache"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="virtual/perl-Storable"
RDEPEND="${DEPEND}"

SRC_TEST=do
