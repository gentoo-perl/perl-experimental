# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=1.7.3
inherit perl-module

DESCRIPTION='BeLike::KENTNL when you build your distributions.'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.4004 ( 0.400.400 )
	echo \>=dev-perl/Module-Build-0.400.400
}
perl_meta_build() {
	# Module::Build 0.4004 ( 0.400.400 )
	echo \>=dev-perl/Module-Build-0.400.400
}
perl_meta_runtime() {
	# Carp
	echo dev-lang/perl
	# Class::Load
	echo dev-perl/Class-Load
	# Dist::Zilla 4.300029 ( 4.300.29 )
	echo \>=dev-perl/Dist-Zilla-4.300.29
	# Dist::Zilla::File::FromCode
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Plugin::Author::KENTNL::Prereqs::Latest::Selective v0.1.0 ( 0.1.0 )
	echo \>=dev-perl/Dist-Zilla-Plugin-Author-KENTNL-Prereqs-Latest-Selective-0.1.0
	# Dist::Zilla::Plugin::Authority 1.006 ( 1.6.0 )
	echo \>=dev-perl/Dist-Zilla-Plugin-Authority-1.6.0
	# Dist::Zilla::Plugin::AutoPrereqs 4.300029 ( 4.300.29 )
	echo \>=dev-perl/Dist-Zilla-4.300.29
	# Dist::Zilla::Plugin::Bootstrap::lib 0.02000100 ( 0.20.1.0 )
	echo \>=dev-perl/Dist-Zilla-Plugin-Bootstrap-lib-0.20.1.0
	# Dist::Zilla::Plugin::CheckExtraTests 0.007 ( 0.7.0 )
	echo \>=dev-perl/Dist-Zilla-Plugin-CheckExtraTests-0.7.0
	# Dist::Zilla::Plugin::ConfirmRelease 4.300029 ( 4.300.29 )
	echo \>=dev-perl/Dist-Zilla-4.300.29
	# Dist::Zilla::Plugin::Test::EOL 0.02 ( 0.20.0 )
	echo \>=dev-perl/Dist-Zilla-Plugin-Test-EOL-0.20.0
	# Dist::Zilla::Plugin::FakeRelease 4.300029 ( 4.300.29 )
	echo \>=dev-perl/Dist-Zilla-4.300.29
	# Dist::Zilla::Plugin::GatherDir 4.300029 ( 4.300.29 )
	echo \>=dev-perl/Dist-Zilla-4.300.29
	# Dist::Zilla::Plugin::Git::Check 2.009 ( 2.9.0 )
	echo \>=dev-perl/Dist-Zilla-Plugin-Git-2.9.0
	# Dist::Zilla::Plugin::Git::CommitBuild 2.009 ( 2.9.0 )
	echo \>=dev-perl/Dist-Zilla-Plugin-Git-2.9.0
	# Dist::Zilla::Plugin::Git::GatherDir 2.009 ( 2.9.0 )
	echo \>=dev-perl/Dist-Zilla-Plugin-Git-2.9.0
	# Dist::Zilla::Plugin::Git::NextVersion 2.009 ( 2.9.0 )
	echo \>=dev-perl/Dist-Zilla-Plugin-Git-2.9.0
	# Dist::Zilla::Plugin::Git::Tag 2.009 ( 2.9.0 )
	echo \>=dev-perl/Dist-Zilla-Plugin-Git-2.9.0
	# Dist::Zilla::Plugin::GithubMeta 0.28 ( 0.280.0 )
	echo \>=dev-perl/Dist-Zilla-Plugin-GithubMeta-0.280.0
	# Dist::Zilla::Plugin::License 4.300029 ( 4.300.29 )
	echo \>=dev-perl/Dist-Zilla-4.300.29
	# Dist::Zilla::Plugin::Manifest 4.300029 ( 4.300.29 )
	echo \>=dev-perl/Dist-Zilla-4.300.29
	# Dist::Zilla::Plugin::ManifestSkip 4.300029 ( 4.300.29 )
	echo \>=dev-perl/Dist-Zilla-4.300.29
	# Dist::Zilla::Plugin::MetaConfig 4.300029 ( 4.300.29 )
	echo \>=dev-perl/Dist-Zilla-4.300.29
	# Dist::Zilla::Plugin::MetaData::BuiltWith 0.03000100 ( 0.30.1.0 )
	echo \>=dev-perl/Dist-Zilla-Plugin-MetaData-BuiltWith-0.30.1.0
	# Dist::Zilla::Plugin::MetaJSON 4.300029 ( 4.300.29 )
	echo \>=dev-perl/Dist-Zilla-4.300.29
	# Dist::Zilla::Plugin::MetaProvides 1.14000001 ( 1.140.0.10 )
	echo \>=dev-perl/Dist-Zilla-Plugin-MetaProvides-1.140.0.10
	# Dist::Zilla::Plugin::MetaProvides::Package 1.14000001 ( 1.140.0.10 )
	echo \>=dev-perl/Dist-Zilla-Plugin-MetaProvides-Package-1.140.0.10
	# Dist::Zilla::Plugin::MetaTests 4.300029 ( 4.300.29 )
	echo \>=dev-perl/Dist-Zilla-4.300.29
	# Dist::Zilla::Plugin::MetaYAML 4.300029 ( 4.300.29 )
	echo \>=dev-perl/Dist-Zilla-4.300.29
	# Dist::Zilla::Plugin::MinimumPerl
	echo dev-perl/Dist-Zilla-Plugin-MinimumPerl
	# Dist::Zilla::Plugin::ModuleBuild 4.300029 ( 4.300.29 )
	echo \>=dev-perl/Dist-Zilla-4.300.29
	# Dist::Zilla::Plugin::PerlTidy
	echo dev-perl/Dist-Zilla-Plugin-PerlTidy
	# Dist::Zilla::Plugin::PkgVersion 4.300029 ( 4.300.29 )
	echo \>=dev-perl/Dist-Zilla-4.300.29
	# Dist::Zilla::Plugin::PodCoverageTests 4.300029 ( 4.300.29 )
	echo \>=dev-perl/Dist-Zilla-4.300.29
	# Dist::Zilla::Plugin::PodSyntaxTests 4.300029 ( 4.300.29 )
	echo \>=dev-perl/Dist-Zilla-4.300.29
	# Dist::Zilla::Plugin::PodWeaver 3.101641 ( 3.101.641 )
	echo \>=dev-perl/Dist-Zilla-Plugin-PodWeaver-3.101.641
	# Dist::Zilla::Plugin::Prereqs 4.300029 ( 4.300.29 )
	echo \>=dev-perl/Dist-Zilla-4.300.29
	# Dist::Zilla::Plugin::PruneCruft 4.300029 ( 4.300.29 )
	echo \>=dev-perl/Dist-Zilla-4.300.29
	# Dist::Zilla::Plugin::ReadmeAnyFromPod 0.120120 ( 0.120.120 )
	echo \>=dev-perl/Dist-Zilla-Plugin-ReadmeAnyFromPod-0.120.120
	# Dist::Zilla::Plugin::ReadmeFromPod 0.16 ( 0.160.0 )
	echo \>=dev-perl/Dist-Zilla-Plugin-ReadmeFromPod-0.160.0
	# Dist::Zilla::Plugin::ReportVersions::Tiny 1.08 ( 1.80.0 )
	echo \>=dev-perl/Dist-Zilla-Plugin-ReportVersions-Tiny-1.80.0
	# Dist::Zilla::Plugin::Test::CPAN::Changes 0.008 ( 0.8.0 )
	echo \>=dev-perl/Dist-Zilla-Plugin-Test-CPAN-Changes-0.8.0
	# Dist::Zilla::Plugin::Test::Compile 1.112820 ( 1.112.820 )
	echo \>=dev-perl/Dist-Zilla-Plugin-Test-Compile-1.112.820
	# Dist::Zilla::Plugin::Test::Kwalitee 2.03 ( 2.30.0 )
	echo \>=dev-perl/Dist-Zilla-Plugin-Test-Kwalitee-2.30.0
	# Dist::Zilla::Plugin::Test::MinimumVersion 2.000002 ( 2.0.2 )
	echo \>=dev-perl/Dist-Zilla-Plugin-Test-MinimumVersion-2.0.2
	# Dist::Zilla::Plugin::Test::Perl::Critic 2.112410 ( 2.112.410 )
	echo \>=dev-perl/Dist-Zilla-Plugin-Test-Perl-Critic-2.112.410
	# Dist::Zilla::Plugin::TestRelease 4.300029 ( 4.300.29 )
	echo \>=dev-perl/Dist-Zilla-4.300.29
	# Dist::Zilla::Plugin::Twitter 0.017 ( 0.17.0 )
	echo \>=dev-perl/Dist-Zilla-Plugin-Twitter-0.17.0
	# Dist::Zilla::Plugin::UploadToCPAN 4.300029 ( 4.300.29 )
	echo \>=dev-perl/Dist-Zilla-4.300.29
	# Dist::Zilla::Role::FileGatherer
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::MintingProfile::ShareDir
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::PluginBundle
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Util::EmulatePhase 0.01025802 ( 0.10.258.20 )
	echo \>=dev-perl/Dist-Zilla-Util-EmulatePhase-0.10.258.20
	# IO::Socket::SSL 1.81 ( 1.810.0 )
	echo \>=dev-perl/IO-Socket-SSL-1.810.0
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
	# Pod::Weaver::Plugin::Encoding 0.01 ( 0.10.0 )
	echo \>=dev-perl/Pod-Weaver-Plugin-Encoding-0.10.0
	# String::Formatter
	echo dev-perl/String-Formatter
	# Test::CPAN::Meta
	echo dev-perl/Test-CPAN-Meta
	# Test::EOL 0.9 ( 0.900.0 )
	echo \>=dev-perl/Test-EOL-0.900.0
	# Test::Perl::Critic
	echo dev-perl/Test-Perl-Critic
	# Test::Pod
	echo dev-perl/Test-Pod
	# Test::Pod::Coverage
	echo dev-perl/Test-Pod-Coverage
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
