# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=DROLSKY
MODULE_VERSION=0.02
inherit perl-module

DESCRIPTION="Combines List::Util and List::MoreUtils in one bite-sized package"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=dev-perl/List-MoreUtils-0.220.0
	>=virtual/perl-Scalar-List-Utils-1.190.0
"
DEPEND="${RDEPEND}
	>=virtual/perl-Module-Build-0.350.0
"

SRC_TEST=do
