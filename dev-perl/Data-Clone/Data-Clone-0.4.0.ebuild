# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=GFUJI
MODULE_VERSION=0.004
inherit perl-module

DESCRIPTION='Polymorphic data cloning'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RDEPEND="
	>=virtual/perl-XSLoader-0.20.0
	virtual/perl-parent
"
# Test::More -> perl-Test-Simple
DEPEND="
	>=virtual/perl-Devel-PPPort-3.190.0
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
	>=virtual/perl-ExtUtils-ParseXS-3.180.0
	$RDEPEND
	test? (
		>=virtual/perl-Test-Simple-0.880.0
		>=dev-perl/Test-Requires-0.30.0
	)
"
SRC_TEST="do parallel"
