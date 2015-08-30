# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=1.6.0
inherit perl-module

DESCRIPTION='BeLike::KENTNL when you build your distributions.'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.4003 ( 0.400.300 )
	echo \>=dev-perl/Module-Build-0.400.300
}
perl_meta_build() {
	# Module::Build 0.4003 ( 0.400.300 )
	echo \>=dev-perl/Module-Build-0.400.300
}
perl_meta_runtime() {
	# Carp
	echo dev-lang/perl
	# Class::Load
	echo dev-perl/Class-Load
	# Dist::Zilla 4.300000 ( 4.300.0 )
	echo \>=dev-perl/Dist-Zilla-4.300.0
	# Dist::Zilla::File::FromCode
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Plugin::Author::KENTNL::Prereqs::Latest::Selective
	echo dev-perl/Dist-Zilla-Plugin-Author-KENTNL-Prereqs-Latest-Selective
	# Dist::Zilla::Plugin::Authority
	echo dev-perl/Dist-Zilla-Plugin-Authority
	# Dist::Zilla::Plugin::AutoPrereqs 4.200011 ( 4.200.11 )
	echo \>=dev-perl/Dist-Zilla-4.200.11
	# Dist::Zilla::Plugin::Bootstrap::lib
	echo dev-perl/Dist-Zilla-Plugin-Bootstrap-lib
	# Dist::Zilla::Plugin::CheckExtraTests
	echo dev-perl/Dist-Zilla-Plugin-CheckExtraTests
	# Dist::Zilla::Plugin::ConfirmRelease
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Plugin::EOLTests 0.02 ( 0.20.0 )
	echo \>=dev-perl/Dist-Zilla-Plugin-Test-EOL-0.20.0
	# Dist::Zilla::Plugin::FakeRelease
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Plugin::GatherDir
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Plugin::Git::Check 1.102040 ( 1.102.40 )
	echo \>=dev-perl/Dist-Zilla-Plugin-Git-1.102.40
	# Dist::Zilla::Plugin::Git::CommitBuild 1.102040 ( 1.102.40 )
	echo \>=dev-perl/Dist-Zilla-Plugin-Git-1.102.40
	# Dist::Zilla::Plugin::Git::GatherDir 1.120970 ( 1.120.970 )
	echo \>=dev-perl/Dist-Zilla-Plugin-Git-1.120.970
	# Dist::Zilla::Plugin::Git::NextVersion 1.102810 ( 1.102.810 )
	echo \>=dev-perl/Dist-Zilla-Plugin-Git-1.102.810
	# Dist::Zilla::Plugin::Git::Tag 1.102040 ( 1.102.40 )
	echo \>=dev-perl/Dist-Zilla-Plugin-Git-1.102.40
	# Dist::Zilla::Plugin::GithubMeta 0.08 ( 0.80.0 )
	echo \>=dev-perl/Dist-Zilla-Plugin-GithubMeta-0.80.0
	# Dist::Zilla::Plugin::License
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Plugin::Manifest
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Plugin::ManifestSkip
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Plugin::MetaConfig
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Plugin::MetaData::BuiltWith 0.03000100 ( 0.30.1.0 )
	echo \>=dev-perl/Dist-Zilla-Plugin-MetaData-BuiltWith-0.30.1.0
	# Dist::Zilla::Plugin::MetaJSON
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Plugin::MetaProvides 1.14000001 ( 1.140.0.10 )
	echo \>=dev-perl/Dist-Zilla-Plugin-MetaProvides-1.140.0.10
	# Dist::Zilla::Plugin::MetaProvides::Package 1.14000001 ( 1.140.0.10 )
	echo \>=dev-perl/Dist-Zilla-Plugin-MetaProvides-Package-1.140.0.10
	# Dist::Zilla::Plugin::MetaTests
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Plugin::MetaYAML
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Plugin::MinimumPerl
	echo dev-perl/Dist-Zilla-Plugin-MinimumPerl
	# Dist::Zilla::Plugin::ModuleBuild
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Plugin::PkgVersion
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Plugin::PodCoverageTests
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Plugin::PodSyntaxTests
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Plugin::PodWeaver 3.093321 ( 3.93.321 )
	echo \>=dev-perl/Dist-Zilla-Plugin-PodWeaver-3.93.321
	# Dist::Zilla::Plugin::Prereqs
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Plugin::PruneCruft
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Plugin::ReadmeFromPod 0.12 ( 0.120.0 )
	echo \>=dev-perl/Dist-Zilla-Plugin-ReadmeFromPod-0.120.0
	# Dist::Zilla::Plugin::ReportVersions::Tiny 1.01 ( 1.10.0 )
	echo \>=dev-perl/Dist-Zilla-Plugin-ReportVersions-Tiny-1.10.0
	# Dist::Zilla::Plugin::Test::CPAN::Changes
	echo dev-perl/Dist-Zilla-Plugin-Test-CPAN-Changes
	# Dist::Zilla::Plugin::Test::Compile 1.112400 ( 1.112.400 )
	echo \>=dev-perl/Dist-Zilla-Plugin-Test-Compile-1.112.400
	# Dist::Zilla::Plugin::Test::Kwalitee 1.112410 ( 1.112.410 )
	echo \>=dev-perl/Dist-Zilla-Plugin-Test-Kwalitee-1.112.410
	# Dist::Zilla::Plugin::Test::MinimumVersion
	echo dev-perl/Dist-Zilla-Plugin-Test-MinimumVersion
	# Dist::Zilla::Plugin::Test::Perl::Critic 1.102280 ( 1.102.280 )
	echo \>=dev-perl/Dist-Zilla-Plugin-Test-Perl-Critic-1.102.280
	# Dist::Zilla::Plugin::TestRelease
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Plugin::Twitter 0.011 ( 0.11.0 )
	echo \>=dev-perl/Dist-Zilla-Plugin-Twitter-0.11.0
	# Dist::Zilla::Plugin::UploadToCPAN
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::FileGatherer
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::MintingProfile::ShareDir
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::PluginBundle
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Util::EmulatePhase 0.01025802 ( 0.10.258.20 )
	echo \>=dev-perl/Dist-Zilla-Util-EmulatePhase-0.10.258.20
	# IO::Socket::SSL
	echo dev-perl/IO-Socket-SSL
	# LWP::Protocol::https 6.00 ( 6.0.0 )
	echo \>=dev-perl/LWP-Protocol-https-6.0.0
	# Moose 1.01 ( 1.10.0 )
	echo \>=dev-perl/Moose-1.10.0
	# Moose::Autobox
	echo dev-perl/Moose-Autobox
	# MooseX::Has::Sugar 0.05044 ( 0.50.440 )
	echo \>=dev-perl/MooseX-Has-Sugar-0.50.440
	# MooseX::Types 0.21 ( 0.210.0 )
	echo \>=dev-perl/MooseX-Types-0.210.0
	# Net::SSLeay 1.36 ( 1.360.0 )
	echo \>=dev-perl/Net-SSLeay-1.360.0
	# Perl::PrereqScanner 1.006 ( 1.6.0 )
	echo \>=dev-perl/Perl-PrereqScanner-1.6.0
	# Pod::Coverage::TrustPod
	echo dev-perl/Pod-Coverage-TrustPod
	# Pod::Weaver::Plugin::Encoding
	echo dev-perl/Pod-Weaver-Plugin-Encoding
	# String::Formatter
	echo dev-perl/String-Formatter
	# Test::CPAN::Meta
	echo dev-perl/Test-CPAN-Meta
	# Test::EOL 0.9 ( 0.900.0 )
	echo \>=dev-perl/Test-EOL-0.900.0
	# Test::Perl::Critic
	echo dev-perl/Test-Perl-Critic
	# namespace::autoclean 0.09 ( 0.90.0 )
	echo \>=dev-perl/namespace-autoclean-0.90.0
	# perl v5.10.0 ( 5.10.0 )
	echo \>=dev-lang/perl-5.10.0
	# strict
	echo dev-lang/perl
	# version
	echo virtual/perl-version
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Capture::Tiny
	echo dev-perl/Capture-Tiny
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# File::pushd
	echo dev-perl/File-pushd
	# FindBin
	echo dev-lang/perl
	# Git::Wrapper
	echo dev-perl/Git-Wrapper
	# JSON
	echo dev-perl/JSON
	# Path::Class
	echo dev-perl/Path-Class
	# Test::DZil
	echo dev-perl/Dist-Zilla
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::File::ShareDir v0.3.0 ( 0.3.0 )
	echo \>=dev-perl/Test-File-ShareDir-0.3.0
	# Test::More 0.98 ( 0.980.0 )
	echo \>=virtual/perl-Test-Simple-0.980.0
	# Test::Output
	echo dev-perl/Test-Output
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
