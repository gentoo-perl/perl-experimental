# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=AMBS
MODULE_VERSION=0.04
MODULE_SECTION=ExtUtils
inherit perl-module

DESCRIPTION="A tool to build C libraries"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=virtual/perl-ExtUtils-CBuilder-0.230.0
	virtual/perl-File-Temp
	virtual/perl-File-Spec
"
DEPEND="${RDEPEND}
	>=dev-perl/Module-Build-0.360.0
	test? (
		dev-perl/Test-Pod
		dev-perl/Test-Pod-Coverage
	)
"
