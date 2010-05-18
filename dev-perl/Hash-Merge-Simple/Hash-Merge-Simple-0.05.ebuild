# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=ROKR
inherit perl-module

DESCRIPTION="Recursively merge two or more hashes, simply"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="dev-perl/Clone"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.31
	test? ( dev-perl/Test-Most
		dev-perl/Test-Deep )"

SRC_TEST=do
