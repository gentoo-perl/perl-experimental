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
comment() { true;}

COMMON_DEPEND="
	$(comment Carp)

	$(comment Class::Load)
	>=dev-perl/Class-Load-0.06 $(comment 0.60.0)

	$(comment Dist::Zilla 4.300000)
	>=dev-perl/Dist-Zilla-4.300.0

	$(comment Dist::Zilla::File::FromCode)

	$(comment Dist::Zilla::Plugin::AutoPrereqs 4.200011)
	>=dev-perl/Dist-Zilla-4.200.11

	$(comment Dist::Zilla::Plugin::AutoVersion::Relative 0.01035617)
	>=dev-perl/Dist-Zilla-Plugin-AutoVersion-Relative-0.10.356.170

	$(comment Dist::Zilla::Plugin::CheckExtraTests)
	dev-perl/Dist-Zilla-Plugin-CheckExtraTests

	$(comment Dist::Zilla::Plugin::ConfirmRelease)
	dev-perl/Dist-Zilla

	$(comment Dist::Zilla::Plugin::EOLTests 0.02)
	>=dev-perl/Dist-Zilla-Plugin-EOLTests-0.20.0

	$(comment Dist::Zilla::Plugin::FakeRelease)
	$(comment Dist::Zilla::Plugin::GatherDir)
	dev-perl/Dist-Zilla

	$(comment Dist::Zilla::Plugin::Git::Check 1.102040)
	$(comment Dist::Zilla::Plugin::Git::CommitBuild 1.102040)
	$(comment Dist::Zilla::Plugin::Git::NextVersion 1.102810)
	$(comment Dist::Zilla::Plugin::Git::Tag 1.102040)
	>=dev-perl/Dist-Zilla-Plugin-Git-1.102.810

	$(comment Dist::Zilla::Plugin::GithubMeta 0.08)
	>=dev-perl/Dist-Zilla-Plugin-GithubMeta-0.80.0

	$(comment Dist::Zilla::Plugin::License)
	$(comment Dist::Zilla::Plugin::Manifest)
	$(comment Dist::Zilla::Plugin::ManifestSkip)
	$(comment Dist::Zilla::Plugin::MetaConfig)
	dev-perl/Dist-Zilla

	$(comment Dist::Zilla::Plugin::MetaData::BuiltWith 0.01014716)
	>=dev-perl/Dist-Zilla-Plugin-MetaData-BuiltWith-0.10.147.160

	$(comment Dist::Zilla::Plugin::MetaJSON)
	dev-perl/Dist-Zilla

	$(comment Dist::Zilla::Plugin::MetaProvides 1.12044518)
	>=dev-perl/Dist-Zilla-Plugin-MetaProvides-1.120.445.180

	$(comment Dist::Zilla::Plugin::MetaProvides::Package)
	>=dev-perl/Dist-Zilla-Plugin-MetaProvides-Package-1.110.444.40

	$(comment Dist::Zilla::Plugin::MetaTests)
	$(comment Dist::Zilla::Plugin::MetaYAML)
	$(comment Dist::Zilla::Plugin::ModuleBuild)
	$(comment Dist::Zilla::Plugin::PkgVersion)
	$(comment Dist::Zilla::Plugin::PodCoverageTests)
	$(comment Dist::Zilla::Plugin::PodSyntaxTests)
	dev-perl/Dist-Zilla

	$(comment Dist::Zilla::Plugin::PodWeaver 3.093321)
	>=dev-perl/Dist-Zilla-Plugin-PodWeaver-3.93.321

	$(comment Dist::Zilla::Plugin::Prereqs)
	$(comment Dist::Zilla::Plugin::PruneCruft)
	dev-perl/Dist-Zilla

	$(comment Dist::Zilla::Plugin::ReadmeFromPod 0.12)
	>=dev-perl/Dist-Zilla-Plugin-ReadmeFromPod-0.120.0

	$(comment Dist::Zilla::Plugin::ReportVersions::Tiny 1.01)
	>=dev-perl/Dist-Zilla-Plugin-ReportVersions-Tiny-1.10.0

	$(comment Dist::Zilla::Plugin::Test::CPAN::Changes)
	dev-perl/Dist-Zilla-Plugin-Test-CPAN-Changes

	$(comment Dist::Zilla::Plugin::Test::Compile-1.112400)
	>=dev-perl/Dist-Zilla-Plugin-Test-Compile-1.112.400

	$(comment Dist::Zilla::Plugin::Test::Kwalitee-1.112400)
	>=dev-perl/Dist-Zilla-Plugin-Test-Kwalitee-1.112.400

	$(comment Dist::Zilla::Plugin::Test::Perl::Critic 1.102280)
	>=dev-perl/Dist-Zilla-Plugin-Test-Perl-Critic-1.102.280

	$(comment Dist::Zilla::Plugin::TestRelease)

	$(comment Dist::Zilla::Plugin::Twitter 0.007)
	>=dev-perl/Dist-Zilla-Plugin-Twitter-0.7.0

	$(comment Dist::Zilla::Plugin::UploadToCPAN)
	$(comment Dist::Zilla::Role::FileGatherer)
	$(comment Dist::Zilla::Role::MintingProfile::ShareDir)
	$(comment Dist::Zilla::Role::PluginBundle)
	dev-perl/Dist-Zilla

	$(comment IO::Socket::SSL)
	dev-perl/IO-Socket-SSL

	$(comment LWP::Protocol::https 6.00)
	>=dev-perl/LWP-Protocol-https-6.0.0

	$(comment Moose 1.01)
	>=dev-perl/Moose-1.01 $(comment 1.10.0)

	$(comment Moose::Autobox)
	dev-perl/Moose-Autobox

	$(comment MooseX::Has::Sugar 0.05044)
	>=dev-perl/MooseX-Has-Sugar-0.50.440

	$(comment MooseX::Types 0.21)
	>=dev-perl/MooseX-Types-0.210.0

	$(comment Net::SLeay 1.36)
	>=dev-perl/Net-SSLeay-1.36 $(comment 1.360.0)

	$(comment Perl::PrereqScanner 1.006)
	>=dev-perl/Perl-PrereqScanner-1.6.0

	$(comment Pod::Coverage::TrustPod)
	dev-perl/Pod-Coverage-TrustPod

	$(comment String::Formatter)
	dev-perl/String-Formatter

	$(comment Test::CPAN::Meta)
	dev-perl/Test-CPAN-Meta

	$(comment Test::EOL 0.9)
	>=dev-perl/Test-EOL-0.900.0

	$(comment namespace::autoclean 0.09)
	>=dev-perl/namespace-autoclean-0.09 $(comment 0.90.0)

	$(comment strict)

	$(comment warnings)
	!!dev-perl/Dist-Zilla-PluginBundle-KENTNL
"
DEPEND="
	${COMMON_DEPEND}
	$(comment build)
	$(comment Capture::Tiny)
	dev-perl/Capture-Tiny

	$(comment File::Find)

	$(comment File::Temp)
	virtual/perl-File-Temp

	$(comment File::pushd)
	dev-perl/File-pushd

	$(comment FindBin)

	$(comment JSON)
	dev-perl/JSON

	$(comment Module::Build 0.3601)
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)

	$(comment Path::Class)
	dev-perl/Path-Class

	$(comment Test::DZil)
	>=dev-perl/Dist-Zilla-4.200.1

	$(comment Test::Fatal)
	dev-perl/Test-Fatal

	$(comment Test::File::ShareDir 0.3.0)
	>=dev-perl/Test-File-ShareDir-0.3.0

	$(comment Test::More 0.88)
	>=virtual/perl-Test-Simple-0.88 $(comment 0.880.0)

	$(comment Test::Output)
	dev-perl/Test-Output

	$(comment configure)

	$(comment Module::Build 0.3601)
	>=virtual/perl-Module-Build-0.36.01 $(comment 0.360.100)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
