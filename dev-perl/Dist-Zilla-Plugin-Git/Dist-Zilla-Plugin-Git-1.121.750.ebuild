# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=JQUELIN
MODULE_VERSION=1.121750
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
	# Dist::Zilla::Plugin::GatherDir
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::AfterBuild
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::AfterMint
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::AfterRelease
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::BeforeRelease
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::PluginBundle
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::VersionProvider
	echo dev-perl/Dist-Zilla
	# File::Find::Rule
	echo dev-perl/File-Find-Rule
	# File::HomeDir
	echo dev-perl/File-HomeDir
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# File::Temp
	echo virtual/perl-File-Temp
	# File::chdir
	echo dev-perl/File-chdir
	# Git::Wrapper
	echo dev-perl/Git-Wrapper
	# IPC::Open3
	echo dev-lang/perl
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Moose
	echo dev-perl/Moose
	# Moose::Autobox
	echo dev-perl/Moose-Autobox
	# Moose::Role
	echo dev-perl/Moose
	# MooseX::AttributeShortcuts
	echo dev-perl/MooseX-AttributeShortcuts
	# MooseX::Has::Sugar
	echo dev-perl/MooseX-Has-Sugar
	# MooseX::Types::Moose
	echo dev-perl/MooseX-Types
	# MooseX::Types::Path::Class
	echo dev-perl/MooseX-Types-Path-Class
	# Path::Class
	echo dev-perl/Path-Class
	# Path::Class::Dir
	echo dev-perl/Path-Class
	# String::Formatter
	echo dev-perl/String-Formatter
	# Try::Tiny
	echo dev-perl/Try-Tiny
	# Version::Next
	echo dev-perl/Version-Next
	# autodie
	echo dev-perl/autodie
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
	# Dist::Zilla::Role::Releaser
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Tester
	echo dev-perl/Dist-Zilla
	# File::Copy
	echo dev-lang/perl
	# File::Copy::Recursive
	echo dev-perl/File-Copy-Recursive
	# File::Find
	echo dev-lang/perl
	# File::Path
	echo virtual/perl-File-Path
	# File::Which
	echo dev-perl/File-Which
	# File::pushd
	echo dev-perl/File-pushd
	# Test::DZil
	echo dev-perl/Dist-Zilla
	# Test::Exception
	echo dev-perl/Test-Exception
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
