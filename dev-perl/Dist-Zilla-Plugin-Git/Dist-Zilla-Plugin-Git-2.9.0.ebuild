# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=CJM
MODULE_VERSION=2.009
inherit perl-module

DESCRIPTION='update your git repository after release'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=virtual/perl-Module-Build-0.36.01
}
perl_meta_build() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=virtual/perl-Module-Build-0.36.01
}
perl_meta_runtime() {
	# Class::MOP
	echo dev-perl/Moose
	# Cwd
	echo virtual/perl-File-Spec
	# DateTime
	echo dev-perl/DateTime
	# Dist::Zilla 4 ( 4.0.0 )
	echo \>=dev-perl/Dist-Zilla-4.0.0
	# Dist::Zilla::Plugin::GatherDir 4.200016 ( 4.200.16 )
	echo \>=dev-perl/Dist-Zilla-4.200.16
	# Dist::Zilla::Role::AfterBuild
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::AfterMint
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::AfterRelease
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::BeforeRelease
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::FilePruner
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::PluginBundle
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::VersionProvider
	echo dev-perl/Dist-Zilla
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# File::Temp
	echo virtual/perl-File-Temp
	# File::chdir
	echo dev-perl/File-chdir
	# Git::Wrapper 0.021 ( 0.21.0 )
	echo \>=dev-perl/Git-Wrapper-0.21.0
	# IPC::Open3
	echo dev-lang/perl
	# IPC::System::Simple
	echo dev-perl/IPC-System-Simple
	# List::AllUtils
	echo dev-perl/List-AllUtils
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Moose
	echo dev-perl/Moose
	# Moose::Autobox
	echo dev-perl/Moose-Autobox
	# Moose::Role
	echo dev-perl/Moose
	# Moose::Util::TypeConstraints
	echo dev-perl/Moose
	# MooseX::AttributeShortcuts
	echo dev-perl/MooseX-AttributeShortcuts
	# MooseX::Has::Sugar
	echo dev-perl/MooseX-Has-Sugar
	# MooseX::Types::Moose
	echo dev-perl/MooseX-Types
	# MooseX::Types::Path::Class
	echo dev-perl/MooseX-Types-Path-Class
	# Path::Class 0.22 ( 0.220.0 )
	echo \>=dev-perl/Path-Class-0.220.0
	# Path::Class::Dir
	echo dev-perl/Path-Class
	# String::Formatter
	echo dev-perl/String-Formatter
	# Try::Tiny
	echo dev-perl/Try-Tiny
	# Version::Next
	echo dev-perl/Version-Next
	# constant
	echo virtual/perl-constant
	# namespace::autoclean 0.09 ( 0.90.0 )
	echo \>=dev-perl/namespace-autoclean-0.90.0
	# perl 5.010 ( 5.10.0 )
	echo \>=dev-lang/perl-5.10.0
	# strict
	echo dev-lang/perl
	# version 0.80 ( 0.800.0 )
	echo \>=virtual/perl-version-0.80
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Dist::Zilla::File::InMemory
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::Releaser
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Tester
	echo dev-perl/Dist-Zilla
	# Exporter
	echo virtual/perl-Exporter
	# File::Copy
	echo dev-lang/perl
	# File::Copy::Recursive
	echo dev-perl/File-Copy-Recursive
	# File::Find
	echo dev-lang/perl
	# File::Path 2.07 ( 2.70.0 )
	echo \>=virtual/perl-File-Path-2.07
	# File::Which
	echo dev-perl/File-Which
	# File::pushd
	echo dev-perl/File-pushd
	# Log::Dispatchouli
	echo dev-perl/Log-Dispatchouli
	# Test::DZil
	echo dev-perl/Dist-Zilla
	# Test::Fatal 0.006 ( 0.6.0 )
	echo \>=dev-perl/Test-Fatal-0.6.0
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
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
