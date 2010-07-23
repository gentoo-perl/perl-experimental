# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="Required attributes which fail only when trying to use them"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-perl/MooseX-Types
	dev-perl/namespace-autoclean
	>=dev-perl/aliased-0.30
	>=dev-perl/Moose-0.94
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.31
	test? (
		dev-perl/Test-Exception
	)
"
SRC_TEST="do"
