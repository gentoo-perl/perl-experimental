# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=SARTAK
MODULE_VERSION=2.01
inherit perl-module

DESCRIPTION="Devel::StackTrace + PadWalker"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RDEPEND="
	>=dev-perl/Devel-StackTrace-2.0.0
	>=dev-perl/PadWalker-1.980.0
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.590.0
"
