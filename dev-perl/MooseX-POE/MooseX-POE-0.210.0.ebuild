# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=GETTY
MODULE_VERSION="0.210"
inherit perl-module

DESCRIPTION="The Illicit Love Child of Moose and POE"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Moose-0.90
	>=dev-perl/POE-1.004
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.31
	test? (
		>=virtual/perl-Test-Simple-0.90
		dev-perl/Test-Exception
	)
"
SRC_TEST="do"
