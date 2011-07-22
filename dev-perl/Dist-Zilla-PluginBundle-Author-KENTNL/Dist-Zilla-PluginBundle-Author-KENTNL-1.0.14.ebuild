# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
inherit perl-module

DESCRIPTION="BeLike::KENTNL when you build your distributions."
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }

COMMON_DEPEND="
	$(comment virtual/perl-Carp)
	>=dev-perl/Class-Load-0.06 $(comment 0.60.0)
	>=dev-perl/Dist-Zilla-4.101.612
	$(comment Dist::Zilla::File::FromCode)
	$(comment Dist::Zilla::Plugin::AutoPrereqs)
	>=dev-perl/Dist-Zilla-Plugin-AutoVersion-Relative-0.10.356.170
	>=dev-perl/Dist-Zilla-Plugin-CompileTests-1.110.930
	$(comment Dist::Zilla::Plugin::ConfirmRelease)
	>=dev-perl/Dist-Zilla-Plugin-CriticTests-1.102.280 $(comment 1.102.280)
	>=dev-perl/Dist-Zilla-Plugin-EOLTests-0.02 $(comment 0.20.0)
	$(comment Dist::Zilla::Plugin::FakeRelease)
	$(comment Dist::Zilla::Plugin::GatherDir)
	>=dev-perl/Dist-Zilla-Plugin-Git-1.102.40
	$(comment Dist::Zilla::Plugin::Git::Check)
	$(comment Dist::Zilla::Plugin::Git::CommitBuild)
	$(comment Dist::Zilla::Plugin::Git::NextVersion)
	$(comment Dist::Zilla::Plugin::Git::Tag)
	>=dev-perl/Dist-Zilla-Plugin-GithubMeta-0.80.0
	>=dev-perl/Dist-Zilla-Plugin-KwaliteeTests-1.101.420
	$(comment Dist::Zilla::Plugin::License)
	$(comment Dist::Zilla::Plugin::Manifest)
	$(comment Dist::Zilla::Plugin::ManifestSkip)
	$(comment Dist::Zilla::Plugin::MetaConfig)
	>=dev-perl/Dist-Zilla-Plugin-MetaData-BuiltWith-0.01014716 $(comment 0.10.147.160)
	$(comment Dist::Zilla::Plugin::MetaJSON)
	>=dev-perl/Dist-Zilla-Plugin-MetaProvides-1.120.445.180
	>=dev-perl/Dist-Zilla-Plugin-MetaProvides-Package-1.110.444.40
	$(comment Dist::Zilla::Plugin::MetaTests)
	$(comment Dist::Zilla::Plugin::MetaYAML)
	$(comment Dist::Zilla::Plugin::ModuleBuild)
	$(comment Dist::Zilla::Plugin::PkgVersion)
	$(comment Dist::Zilla::Plugin::PodCoverageTests)
	$(comment Dist::Zilla::Plugin::PodSyntaxTests)
	>=dev-perl/Dist-Zilla-Plugin-PodWeaver-3.93.321 $(comment 3.93.321)
	$(comment Dist::Zilla::Plugin::Prereqs)
	$(comment Dist::Zilla::Plugin::PruneCruft)
	>=dev-perl/Dist-Zilla-Plugin-ReadmeFromPod-0.12 $(comment 0.120.0)
	>=dev-perl/Dist-Zilla-Plugin-ReportVersions-Tiny-1.01 $(comment 1.10.0)
	dev-perl/Dist-Zilla-Plugin-Test-CPAN-Changes
	$(comment Dist::Zilla::Plugin::TestRelease)
	>=dev-perl/Dist-Zilla-Plugin-Twitter-0.7 $(comment 0.700.0)
	$(comment Dist::Zilla::Plugin::UploadToCPAN)
	$(comment Dist::Zilla::Role::FileGatherer)
	$(comment Dist::Zilla::Role::MintingProfile::ShareDir)
	$(comment Dist::Zilla::Role::PluginBundle)
	dev-perl/IO-Socket-SSL
	>=dev-perl/LWP-Protocol-https-6.0.0
	>=dev-perl/Moose-1.01 $(comment 1.10.0)
	dev-perl/Moose-Autobox
	>=dev-perl/MooseX-Has-Sugar-0.50.443
	>=dev-perl/MooseX-Types-0.210 $(comment 0.210.0)
	>=dev-perl/Net-SSLeay-1.36 $(comment 1.360.0)
	dev-perl/Pod-Coverage-TrustPod
	dev-perl/String-Formatter
	dev-perl/Test-CPAN-Meta
	>=dev-perl/Test-EOL-0.9 $(comment 0.900.0)
	>=dev-perl/namespace-autoclean-0.09 $(comment 0.90.0)
	!!dev-perl/Dist-Zilla-PluginBundle-KENTNL
"
DEPEND="
	${COMMON_DEPEND}
	dev-perl/Capture-Tiny
	$(comment virtual/perl-English)
	$(comment virtual/perl-File-Find)
	virtual/perl-File-Temp
	dev-perl/File-pushd
	$(comment virtual/perl-FindBin)
	dev-perl/JSON
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)
	dev-perl/Path-Class
	>=dev-perl/Dist-Zilla-4.200.1 $(comment Test::DZil)
	dev-perl/Test-Fatal
	>=dev-perl/Test-File-ShareDir-0.3.0
	>=virtual/perl-Test-Simple-0.88 $(comment Test::More 0.880.0)
	dev-perl/Test-Output
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
