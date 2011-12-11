# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=RJBS
MODULE_VERSION=4.300003
inherit perl-module

DESCRIPTION='distribution builder; installer not included!'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
	# File::ShareDir::Install 0.03 ( 0.30.0 )
	echo \>=dev-perl/File-ShareDir-Install-0.30.0
}
perl_meta_runtime() {
	# App::Cmd::Setup 0.309 ( 0.309.0 )
	echo \>=dev-perl/App-Cmd-0.309.0
	# App::Cmd::Tester 0.306 ( 0.306.0 )
	echo \>=dev-perl/App-Cmd-0.306.0
	# Archive::Tar
	echo virtual/perl-Archive-Tar
	# CPAN::Meta::Converter 2.101550 ( 2.101.550 )
	echo \>=virtual/perl-CPAN-Meta-2.101.550
	# CPAN::Meta::Prereqs 2.101390 ( 2.101.390 )
	echo \>=virtual/perl-CPAN-Meta-2.101.390
	# CPAN::Meta::Validator 2.101550 ( 2.101.550 )
	echo \>=virtual/perl-CPAN-Meta-2.101.550
	# CPAN::Uploader 0.101550 ( 0.101.550 )
	echo \>=dev-perl/CPAN-Uploader-0.101.550
	# Carp
	echo dev-lang/perl
	# Config::INI::Reader
	echo dev-perl/Config-INI
	# Config::MVP::Assembler
	echo dev-perl/Config-MVP
	# Config::MVP::Assembler::WithBundles
	echo dev-perl/Config-MVP
	# Config::MVP::Reader 2.101540 ( 2.101.540 )
	echo \>=dev-perl/Config-MVP-2.101.540
	# Config::MVP::Reader::Findable::ByExtension
	echo dev-perl/Config-MVP
	# Config::MVP::Reader::Finder
	echo dev-perl/Config-MVP
	# Config::MVP::Reader::INI 2 ( 2.0.0 )
	echo \>=dev-perl/Config-MVP-Reader-INI-2.0.0
	# Config::MVP::Section 2.200001 ( 2.200.1 )
	echo \>=dev-perl/Config-MVP-2.200.1
	# Data::Dumper
	echo virtual/perl-Data-Dumper
	# Data::Section 0.004 ( 0.4.0 )
	echo \>=dev-perl/Data-Section-0.4.0
	# DateTime 0.44 ( 0.440.0 )
	echo \>=dev-perl/DateTime-0.44
	# Digest::MD5
	echo virtual/perl-Digest-MD5
	# Encode
	echo virtual/perl-Encode
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# ExtUtils::Manifest 1.54 ( 1.540.0 )
	echo \>=virtual/perl-ExtUtils-Manifest-1.540.0
	# File::Copy::Recursive
	echo dev-perl/File-Copy-Recursive
	# File::Find::Rule
	echo dev-perl/File-Find-Rule
	# File::HomeDir
	echo dev-perl/File-HomeDir
	# File::Path
	echo virtual/perl-File-Path
	# File::ShareDir
	echo dev-perl/File-ShareDir
	# File::ShareDir::Install 0.03 ( 0.30.0 )
	echo \>=dev-perl/File-ShareDir-Install-0.30.0
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Temp
	echo virtual/perl-File-Temp
	# File::pushd
	echo dev-perl/File-pushd
	# Hash::Merge::Simple
	echo dev-perl/Hash-Merge-Simple
	# JSON 2 ( 2.0.0 )
	echo \>=dev-perl/JSON-2.0
	# List::MoreUtils
	echo dev-perl/List-MoreUtils
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Log::Dispatchouli 1.102220 ( 1.102.220 )
	echo \>=dev-perl/Log-Dispatchouli-1.102.220
	# Moose 0.92 ( 0.920.0 )
	echo \>=dev-perl/Moose-0.920
	# Moose::Autobox 0.10 ( 0.100.0 )
	echo \>=dev-perl/Moose-Autobox-0.100.0
	# Moose::Role
	echo dev-perl/Moose
	# Moose::Util::TypeConstraints
	echo dev-perl/Moose
	# MooseX::LazyRequire
	echo dev-perl/MooseX-LazyRequire
	# MooseX::Role::Parameterized
	echo dev-perl/MooseX-Role-Parameterized
	# MooseX::SetOnce
	echo dev-perl/MooseX-SetOnce
	# MooseX::Types
	echo dev-perl/MooseX-Types
	# MooseX::Types::Moose
	echo dev-perl/MooseX-Types
	# MooseX::Types::Path::Class
	echo dev-perl/MooseX-Types-Path-Class
	# MooseX::Types::Perl
	echo dev-perl/MooseX-Types-Perl
	# PPI
	echo dev-perl/PPI
	# Params::Util
	echo dev-perl/Params-Util
	# Path::Class
	echo dev-perl/Path-Class
	# Perl::PrereqScanner 1.005 ( 1.5.0 )
	echo \>=dev-perl/Perl-PrereqScanner-1.5.0
	# Perl::Version
	echo dev-perl/Perl-Version
	# Pod::Eventual 0.091480 ( 0.91.480 )
	echo \>=dev-perl/Pod-Eventual-0.91.480
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Software::License 0.101370 ( 0.101.370 )
	echo \>=dev-perl/Software-License-0.101.370
	# Software::LicenseUtils
	echo dev-perl/Software-License
	# String::Formatter 0.100680 ( 0.100.680 )
	echo \>=dev-perl/String-Formatter-0.100.680
	# String::RewritePrefix 0.005 ( 0.5.0 )
	echo \>=dev-perl/String-RewritePrefix-0.5.0
	# Sub::Exporter
	echo dev-perl/Sub-Exporter
	# Sub::Exporter::ForMethods
	echo dev-perl/Sub-Exporter-ForMethods
	# Sub::Exporter::Util
	echo dev-perl/Sub-Exporter
	# Term::ReadKey
	echo dev-perl/TermReadKey
	# Term::ReadLine
	echo dev-lang/perl
	# Term::UI
	echo virtual/perl-Term-UI
	# Test::Deep
	echo dev-perl/Test-Deep
	# Text::Glob 0.08 ( 0.80.0 )
	echo \>=dev-perl/Text-Glob-0.08
	# Text::Template
	echo dev-perl/text-template
	# Try::Tiny
	echo dev-perl/Try-Tiny
	# Version::Requirements 0.100630 ( 0.100.630 )
	echo \>=virtual/perl-Version-Requirements-0.100.630
	# YAML::Tiny
	echo dev-perl/YAML-Tiny
	# autobox 2.53 ( 2.530.0 )
	echo \>=dev-perl/autobox-2.530.0
	# autodie
	echo dev-perl/autodie
	# base
	# echo virtual/perl-base
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
	# parent
	echo virtual/perl-parent
	# perl v5.8.5 ( 5.8.5 )
	echo \>=dev-lang/perl-5.8.5
	# strict
	echo dev-lang/perl
	# version
	echo virtual/perl-version
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
