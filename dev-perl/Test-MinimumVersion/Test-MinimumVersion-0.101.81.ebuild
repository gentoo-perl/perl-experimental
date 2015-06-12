# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.101081
inherit perl-module

DESCRIPTION="does your code require newer perl than you think?"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# Test::More -> Test-Simple
# Test::Builder -> Test-Simple
# base -> perl
RDEPEND="
	virtual/perl-CPAN-Meta
	virtual/perl-Exporter
	dev-perl/File-Find-Rule
	dev-perl/File-Find-Rule-Perl
	>=dev-perl/Perl-MinimumVersion-1.320.0
	virtual/perl-Test-Simple
	>=virtual/perl-version-0.700.0
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		>=virtual/perl-Test-Simple-0.960.0
		|| ( >=virtual/perl-Test-Simple-1.1.10 dev-perl/Test-Tester )
	)
"
