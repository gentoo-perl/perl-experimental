# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=TOKUHIROM
MODULE_VERSION=0.16
inherit perl-module

DESCRIPTION="fork test"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=""
DEPEND="${RDEPEND}
	test? ( >=virtual/perl-Test-Simple-0.88 )"

SRC_TEST=do
