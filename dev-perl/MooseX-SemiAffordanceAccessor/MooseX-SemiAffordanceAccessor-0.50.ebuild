# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=DROLSKY
MODULE_VERSION="0.05"
inherit perl-module

DESCRIPTION="Name your accessors foo() and set_foo()"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=dev-perl/Moose-0.84
"
DEPEND="
	${RDEPEND}
	virtual/perl-Module-Build
"

SRC_TEST=do
