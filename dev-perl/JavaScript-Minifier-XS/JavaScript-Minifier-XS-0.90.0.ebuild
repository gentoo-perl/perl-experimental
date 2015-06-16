# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=GTERMARS
MODULE_VERSION=0.09
inherit perl-module

DESCRIPTION="XS based JavaScript minifier"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

DEPEND="dev-perl/Module-Build
	test? ( virtual/perl-Test-Simple
		dev-perl/Test-Pod
		dev-perl/Test-Pod-Coverage )"
RDEPEND=""
