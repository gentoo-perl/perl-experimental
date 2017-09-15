# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=DOHERTY
MODULE_VERSION=2.000006
inherit perl-module

DESCRIPTION="Release tests for portability"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
# r: Dist::Zilla::File::InMemory -> Dist-Zilla
# r: Dist::Zilla::Role::FileGatherer -> Dist-Zilla
# r: Dist::Zilla::Role::FileInjector -> Dist-Zilla
# r: Dist::Zilla::Role::TextTemplate -> Dist-Zilla
# r: strict, warnings -> perl
RDEPEND="
	dev-perl/Data-Section
	dev-perl/Dist-Zilla
	dev-perl/Moose
	dev-perl/Test-Portability-Files
"
# t: IO::Handle -> IO
# t: IPC::Open3 -> perl
# t: Test::Dzil -> Dist-Zilla 4.200.2
# t: Test::More -> Test-Simple
DEPEND="${RDEPEND}
	>=dev-perl/Module-Build-0.280.0
	test? (
		virtual/perl-File-Spec
		virtual/perl-IO
		>=dev-perl/Dist-Zilla-4.200.2
		>=virtual/perl-Test-Simple-0.960.0
		dev-perl/Test-Output
		virtual/perl-autodie
	)
"
