# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=LAMMEL
MODULE_VERSION=0.46
inherit perl-module

DESCRIPTION='A Logging Role for Moose based on Log::Log4perl'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test minimal"

PERL_RM_FILES=(
	t/perl-critic.t
	t/pod.t
	t/99bench.t
	t/podcoverage.t
)
# Test::More -> Test-Simple
# IO::Scalar -> IO-stringy
RDEPEND="
	>=dev-perl/Any-Moose-0.120.0
	>=dev-perl/Log-Log4perl-1.130.0
	!minimal? (
		>=dev-perl/Moose-0.650.0
	)
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.570.0
	test? (
		>=dev-perl/Moose-0.650.0
		virtual/perl-Test-Simple
		dev-perl/IO-stringy
	)
"
