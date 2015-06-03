# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=1.22
inherit perl-module

DESCRIPTION="test the Kwalitee of a distribution before you release it"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# Cwd -> File-Spec
# Test::More -> Test-Simple
# Test::Tester -> Test-Simple | Test-Tester
RDEPEND="
	virtual/perl-File-Spec
	virtual/perl-Exporter
	>=dev-perl/Module-CPANTS-Analyse-0.920.0
	dev-perl/namespace-clean
	virtual/perl-parent
	!<dev-perl/Dist-Zilla-Plugin-Test-Kwalitee-2.40.0
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	>=dev-perl/Module-Build-Tiny-0.37.0
	test? (
		>=dev-perl/CPAN-Meta-Check-0.7.0
		virtual/perl-CPAN-Meta-Requirements
		dev-perl/Test-Deep
		>=virtual/perl-Test-Simple-0.880.0
		|| ( >=virtual/perl-Test-Simple-1.1.10 >=dev-perl/Test-Tester-0.108.0 )
		>=dev-perl/Test-Warnings-0.9.0
		virtual/perl-if
	)
"
