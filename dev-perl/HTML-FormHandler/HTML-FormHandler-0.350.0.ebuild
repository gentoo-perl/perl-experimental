# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=GSHANK
MODULE_VERSION=0.35000
inherit perl-module

DESCRIPTION="form handler written in Moose"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
COMMON_DEPEND="
	$(comment virtual/perl-Carp)
	dev-perl/DateTime
	dev-perl/DateTime-Format-Strptime
	dev-perl/Email-Valid
	dev-perl/File-ShareDir
	virtual/perl-File-Spec
	>=virtual/perl-locale-maketext-1.09 $(comment 1.90.0)
	>=dev-perl/Moose-2.0.700
	>=dev-perl/MooseX-Getopt-0.16 $(comment 0.160.0)
	>=dev-perl/MooseX-Types-0.200.0
	dev-perl/MooseX-Types-Common
	dev-perl/Try-Tiny
	dev-perl/aliased
	>=dev-perl/namespace-autoclean-0.90.0
"
DEPEND="
	${COMMON_DEPEND}
	$(comment CONFIGURE REQUIRES)
	>=virtual/perl-ExtUtils-MakeMaker-6.30
	>=dev-perl/File-ShareDir-Install-0.30.0
	test? (
		dev-perl/Test-Differences
		dev-perl/Test-Exception
		>=dev-perl/Test-Memory-Cycle-1.04 $(comment 1.40.0)
		>=virtual/perl-Test-Simple-0.94 $(comment Test::More 0.940.0)
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
