# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=2.11
inherit perl-module

DESCRIPTION="Release tests for kwalitee"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# Dist::Zilla::File::InMemory -> Dist-Zilla
# Dist::Zilla::Plugin::MetaResources -> Dist-Zilla
# Dist::Zilla::Role::FileGatherer -> Dist-Zilla
# Dist::Zilla::Role::PrereqSource -> Dist-Zilla
# Dist::Zilla::Role::TextTemplate -> Dist-Zilla
# Test::DZil -> Dist-Zilla
# Test::More -> Test-Simple
RDEPEND="
	>=dev-perl/Data-Section-0.4.0
	>=dev-perl/Dist-Zilla-4.300.39
	dev-perl/Moose
	dev-perl/Sub-Exporter-ForMethods
	dev-perl/namespace-autoclean
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	>=dev-perl/Module-Build-Tiny-0.37.0
	test? (
		virtual/perl-File-Spec
		dev-perl/File-pushd
		dev-perl/Path-Tiny
		dev-perl/Test-Deep
		dev-perl/Test-Fatal
		>=dev-perl/Test-Kwalitee-1.210.0
		virtual/perl-Test-Simple
		virtual/perl-if
	)
"
