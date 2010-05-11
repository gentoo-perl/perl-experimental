# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=GTERMARS
inherit perl-module

DESCRIPTION="XS based JavaScript minifier"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

DEPEND="virtual/perl-Module-Build
	test? ( virtual/perl-Test-Simple
		dev-perl/Test-Pod
		dev-perl/Test-Pod-Coverage )"
RDEPEND=""

SRC_TEST="do"
