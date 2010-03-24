# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=ROODE
inherit perl-module

DESCRIPTION="Easy-to-use date/time formatting"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="virtual/perl-Time-Local"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build"

SRC_TEST=do
