# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=BBYRD
MODULE_VERSION=1.11
inherit perl-module

DESCRIPTION="Software::License pack for Creative Commons' licenses"

LICENSE=" LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-perl/Software-License
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		>=dev-perl/Test-CheckDeps-0.10.0
		>=virtual/perl-Test-Simple-0.940.0
	)
"
