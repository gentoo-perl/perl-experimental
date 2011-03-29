# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=SARTAK
MODULE_VERSION=0.03
inherit perl-module

DESCRIPTION='default "is" to "ro" or "rw" for all attributes'

SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-perl/Moose-0.94
"
DEPEND="${RDEPEND}
	dev-perl/Test-Exception
	>=virtual/perl-ExtUtils-MakeMaker-6.42
"

SRC_TEST=do
