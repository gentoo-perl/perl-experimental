# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=0.14
inherit perl-module

DESCRIPTION="Pure Perl emulation of GNU tee"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# File::Basename -> perl,
# IO::File -> perl-IO
# File::Find -> perl
# Test::More -> perl-Test-Simple
RDEPEND="
	virtual/perl-Exporter
	virtual/perl-Getopt-Long
	virtual/perl-IO
	dev-perl/Probe-Perl
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.310.0
	test? (
		virtual/perl-File-Spec
		virtual/perl-File-Temp
		dev-perl/IO-CaptureOutput
		virtual/perl-Test-Simple
	)"
