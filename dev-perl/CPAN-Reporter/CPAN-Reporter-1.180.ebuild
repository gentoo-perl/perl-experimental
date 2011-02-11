# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION="1.1800"
inherit perl-module

DESCRIPTION="Adds CPAN Testers reporting to CPAN.pm"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Config-Tiny-2.08
	>=virtual/perl-CPAN-1.930.100
	>=dev-perl/Devel-Autoflush-0.40
	>=virtual/perl-ExtUtils-MakeMaker-6.36
	>=dev-perl/File-Copy-Recursive-0.35
	>=dev-perl/File-HomeDir-0.58
	>=dev-perl/File-pushd-0.32
	>=dev-perl/IO-CaptureOutput-1.03
	dev-perl/Probe-Perl
	>=dev-perl/Tee-0.13
"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build
	test? ( >=virtual/perl-Test-Simple-0.62
		>=dev-perl/Test-Reporter-1.54 )"

SRC_TEST="do"
