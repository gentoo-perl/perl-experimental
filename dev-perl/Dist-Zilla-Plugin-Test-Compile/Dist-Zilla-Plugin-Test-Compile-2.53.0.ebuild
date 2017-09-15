# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=2.053
inherit perl-mb-tiny

DESCRIPTION="Common tests to check syntax of your modules, only using core modules"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Data-Section-0.4.0
	>=dev-perl/Dist-Zilla-4.300.39
	dev-perl/Moose
	dev-perl/Path-Tiny
	dev-perl/Sub-Exporter-ForMethods
	dev-perl/namespace-autoclean
"
DEPEND="${RDEPEND}
	>=dev-perl/Module-Build-Tiny-0.39.0
	test? (
		>=virtual/perl-CPAN-Meta-2.120.900
		>=dev-perl/CPAN-Meta-Check-0.7.0
		virtual/perl-CPAN-Meta-Requirements
		virtual/perl-ExtUtils-MakeMaker
		virtual/perl-File-Spec
		dev-perl/File-pushd
		virtual/perl-IO
		>=virtual/perl-Module-CoreList-2.770.0
		>=dev-perl/Perl-PrereqScanner-1.16.0
		dev-perl/Test-MinimumVersion
		>=virtual/perl-Test-Simple-0.940.0
		>=dev-perl/Test-Warnings-0.9.0
		virtual/perl-if
		virtual/perl-version
	)
"
