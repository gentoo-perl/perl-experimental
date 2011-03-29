# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=OVID
MODULE_VERSION=0.05
inherit perl-module

DESCRIPTION="Test Classes the easy way"

SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-perl/Test-Class-0.33
	>=dev-perl/Test-Most-0.21
"
DEPEND="${RDEPEND}
	>=virtual/perl-Module-Build-0.36
"

SRC_TEST=do
