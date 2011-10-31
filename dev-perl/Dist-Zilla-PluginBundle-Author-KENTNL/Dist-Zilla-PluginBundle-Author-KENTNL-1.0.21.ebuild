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
perl_mb_requires() {
	#Carp

	#Class::Load
	echo dev-perl/Class-Load

	#Dist::Zilla 4.300000
	echo \>=dev-perl/Dist-Zilla-4.300.0

	#Dist::Zilla::File::FromCode

	#Dist::Zilla::Plugin::Authority
	echo dev-perl/Dist-Zilla-Plugin-Authority

	#Dist::Zilla::Plugin::AutoPrereqs 4.200011
	echo \>=dev-perl/Dist-Zilla-4.200.11

	#Dist::Zilla::Plugin::AutoVersion::Relative 0.01035617
	echo \>=dev-perl/Dist-Zilla-Plugin-AutoVersion-Relative-0.10.356.170

	#Dist::Zilla::Plugin::CheckExtraTests
	echo dev-perl/Dist-Zilla-Plugin-CheckExtraTests

	#Dist::Zilla::Plugin::ConfirmRelease
	echo dev-perl/Dist-Zilla

	#Dist::Zilla::Plugin::EOLTests 0.02
	echo \>=dev-perl/Dist-Zilla-Plugin-EOLTests-0.20.0

	#Dist::Zilla::Plugin::FakeRelease
	#Dist::Zilla::Plugin::GatherDir
	echo dev-perl/Dist-Zilla

	# Dist::Zilla::Plugin::Git::Check 1.102040
	# Dist::Zilla::Plugin::Git::CommitBuild 1.102040
	# Dist::Zilla::Plugin::Git::NextVersion 1.102810
	# Dist::Zilla::Plugin::Git::Tag 1.102040
	echo \>=dev-perl/Dist-Zilla-Plugin-Git-1.102.810

	# Dist::Zilla::Plugin::GithubMeta 0.08
	echo \>=dev-perl/Dist-Zilla-Plugin-GithubMeta-0.80.0

	# Dist::Zilla::Plugin::License
	# Dist::Zilla::Plugin::Manifest
	# Dist::Zilla::Plugin::ManifestSkip
	# Dist::Zilla::Plugin::MetaConfig
	echo dev-perl/Dist-Zilla

	# Dist::Zilla::Plugin::MetaData::BuiltWith 0.01014716
	echo \>=dev-perl/Dist-Zilla-Plugin-MetaData-BuiltWith-0.10.147.160

	# Dist::Zilla::Plugin::MetaJSON
	echo dev-perl/Dist-Zilla

	# Dist::Zilla::Plugin::MetaProvides 1.12044518
	echo \>=dev-perl/Dist-Zilla-Plugin-MetaProvides-1.120.445.180

	# Dist::Zilla::Plugin::MetaProvides::Package
	echo \>=dev-perl/Dist-Zilla-Plugin-MetaProvides-Package-1.110.444.40

	# Dist::Zilla::Plugin::MetaTests
	# Dist::Zilla::Plugin::MetaYAML
	# Dist::Zilla::Plugin::ModuleBuild
	# Dist::Zilla::Plugin::PkgVersion
	# Dist::Zilla::Plugin::PodCoverageTests
	# Dist::Zilla::Plugin::PodSyntaxTests
	echo dev-perl/Dist-Zilla

	# Dist::Zilla::Plugin::PodWeaver 3.093321
	echo \>=dev-perl/Dist-Zilla-Plugin-PodWeaver-3.93.321

	# Dist::Zilla::Plugin::Prereqs
	# Dist::Zilla::Plugin::PruneCruft
	echo dev-perl/Dist-Zilla

	# Dist::Zilla::Plugin::ReadmeFromPod 0.12
	echo \>=dev-perl/Dist-Zilla-Plugin-ReadmeFromPod-0.12

	# Dist::Zilla::Plugin::ReportVersions::Tiny 1.01
	echo \>=dev-perl/Dist-Zilla-Plugin-ReportVersions-Tiny-1.01

	# Dist::Zilla::Plugin::Test::CPAN::Changes
	echo dev-perl/Dist-Zilla-Plugin-Test-CPAN-Changes

	# Dist::Zilla::Plugin::Test::Compile 1.112400
	echo \>=dev-perl/Dist-Zilla-Plugin-Test-Compile-1.112.400

	# Dist::Zilla::Plugin::Test::Kwalitee 1.112400
	echo \>=dev-perl/Dist-Zilla-Plugin-Test-Kwalitee-1.112.400

	# Dist::Zilla::Plugin::Test::Perl::Critic 1.102280
	echo \>=dev-perl/Dist-Zilla-Plugin-Test-Perl-Critic-1.102.280

	# Dist::Zilla::Plugin::TestRelease

	# Dist::Zilla::Plugin::Twitter 0.007
	echo \>=dev-perl/Dist-Zilla-Plugin-Twitter-0.7.0

	# Dist::Zilla::Plugin::UploadToCPAN
	# Dist::Zilla::Role::FileGatherer
	# Dist::Zilla::Role::MintingProfile::ShareDir
	# Dist::Zilla::Role::PluginBundle
	echo dev-perl/Dist-Zilla

	# IO::Socket::SSL
	echo dev-perl/IO-Socket-SSL

	# LWP::Protocol::https 6.00
	echo \>=dev-perl/LWP-Protocol-https-6.0.0

	# Moose 1.01
	echo \>=dev-perl/Moose-1.01

	# Moose::Autobox
	echo dev-perl/Moose-Autobox

	#MooseX::Has::Sugar 0.05044
	echo \>=dev-perl/MooseX-Has-Sugar-0.50.440

	#MooseX::Types 0.21
	echo \>=dev-perl/MooseX-Types-0.210.0

	#Net::SLeay 1.36
	echo \>=dev-perl/Net-SSLeay-1.36

	#Perl::PrereqScanner 1.006
	echo \>=dev-perl/Perl-PrereqScanner-1.6.0

	# Pod::Coverage::TrustPod
	echo dev-perl/Pod-Coverage-TrustPod

	# String::Formatter
	echo dev-perl/String-Formatter

	# Test::CPAN::Meta
	echo dev-perl/Test-CPAN-Meta

	# Test::EOL 0.9
	echo \>=dev-perl/Test-EOL-0.900.0

	# namespace::autoclean 0.09
	echo \>=dev-perl/namespace-autoclean-0.90.0

	# strict

	# warnings

}
perl_mb_build() {
	# Capture::Tiny
	echo dev-perl/Capture-Tiny

	# File::Find

	# File::Temp
	echo virtual/perl-File-Temp

	# File::pushd
	echo dev-perl/File-pushd

	# FindBin

	# JSON
	echo dev-perl/JSON

	# Module::Build 0.3601
	echo \>=virtual/perl-Module-Build-0.36.01

	# Path::Class
	echo dev-perl/Path-Class

	# Test::DZil
	echo \>=dev-perl/Dist-Zilla-4.200.1

	#Test::Fatal
	echo dev-perl/Test-Fatal

	# Test::File::ShareDir 0.3.0
	echo \>=dev-perl/Test-File-ShareDir-0.3.0

	# Test::More 0.88
	echo \>=virtual/perl-Test-Simple-0.88

	# Test::Output
	echo dev-perl/Test-Output
}
perl_mb_configure() {
	# strict

	# warnings

	# Module::Build 0.3601
	echo \>=virtual/perl-Module-Build-0.36.01
}
perl_extra_conflicts() {
	# conflict Dist::Zilla::PluginBundle::KENTNL

	echo '!!dev-perl/Dist-Zilla-PluginBundle-KENTNL'
}
DEPEND="$(perl_mb_configure)
		$(perl_mb_build)
		$(perl_extra_conflicts)
		$(perl_mb_requires)"
RDEPEND="$(perl_extra_conflicts)
		 $(perl_mb_requires)"
SRC_TEST="do"
