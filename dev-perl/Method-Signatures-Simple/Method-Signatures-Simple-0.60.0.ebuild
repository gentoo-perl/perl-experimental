# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=RHESA
MODULE_VERSION="0.06"
inherit perl-module

DESCRIPTION="Basic method declarations with signatures, without source filters"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-perl/Test-Pod-Coverage
	dev-perl/Devel-Declare"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.31"

SRC_TEST="do"
