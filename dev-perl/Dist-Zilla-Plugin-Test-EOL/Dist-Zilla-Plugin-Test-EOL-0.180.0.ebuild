# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.18
inherit perl-module

DESCRIPTION="Author tests making sure correct line endings are used"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test minimal"
# r: Dist::Zilla::File::InMemory -> Dist-Zilla
# r: Dist::Zilla::Role::FileFinderUser -> Dist-Zilla 1.100.860
# r: Dist::Zilla::Role::FileGatherer -> Dist-Zilla
# r: Dist::Zilla::Role::FileMunger -> Dist-Zilla
# r: Dist::Zilla::Role::PrereqSource -> Dist-Zilla 1.100.860
# r: Dist::Zilla::Role::TextTemplate -> Dist-Zilla
# r: Moose::Util::TypeConstraints -> Moose
# r: strict, warnings -> perl
RDEPEND="
	>=dev-perl/Data-Section-0.4.0
	>=dev-perl/Dist-Zilla-1.100.860
	dev-perl/Moose
	dev-perl/Path-Tiny
	dev-perl/Sub-Exporter-ForMethods
	dev-perl/namespace-autoclean
"
# t: FindBin -> perl
# t: Test::Dzil -> Dist-Zilla 4.200.2
# t: Test::More -> Test-Simple
DEPEND="${RDEPEND}
	>=dev-perl/Module-Build-Tiny-0.39.0
	test? (
		!minimal? (
			>=virtual/perl-CPAN-Meta-2.120.900
		)
		virtual/perl-ExtUtils-MakeMaker
		virtual/perl-File-Spec
		dev-perl/File-pushd
		>=dev-perl/Dist-Zilla-4.200.2
		dev-perl/Test-Deep
		dev-perl/Test-EOL
		>=virtual/perl-Test-Simple-0.880.0
		>=dev-perl/Test-Warnings-0.9.0
		virtual/perl-if
	)
"
