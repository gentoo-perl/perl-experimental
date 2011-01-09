# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=ROKR
MODULE_VERSION=0.0019
inherit perl-module

DESCRIPTION="Handy package munging utilities"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="dev-perl/Clone
	dev-perl/Mouse
	dev-perl/Sub-Install
	dev-perl/Try-Tiny"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.31
	test? (
		dev-perl/Test-Most
	)"

SRC_TEST="do"
