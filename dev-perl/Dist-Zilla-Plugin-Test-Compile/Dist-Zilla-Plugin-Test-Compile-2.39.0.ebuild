# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=2.039
inherit perl-mb-tiny

DESCRIPTION='common tests to check syntax of your modules, only using core modules'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Dist::CheckConflicts 0.02 ( 0.20.0 )
	echo \>=dev-perl/Dist-CheckConflicts-0.20.0
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
	# Module::Build::Tiny 0.030 ( 0.30.0 )
	echo \>=dev-perl/Module-Build-Tiny-0.30.0
}
perl_meta_runtime() {
	# Data::Section 0.004 ( 0.4.0 )
	echo \>=dev-perl/Data-Section-0.4.0
	# Dist::CheckConflicts 0.02 ( 0.20.0 )
	echo \>=dev-perl/Dist-CheckConflicts-0.20.0
	# Dist::Zilla::File::InMemory
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::FileFinderUser
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::FileGatherer
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::FileMunger
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::PrereqSource
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::TextTemplate
	echo dev-perl/Dist-Zilla
	# Moose
	echo dev-perl/Moose
	# Moose::Util::TypeConstraints
	echo dev-perl/Moose
	# Path::Tiny
	echo dev-perl/Path-Tiny
	# Sub::Exporter::ForMethods
	echo dev-perl/Sub-Exporter-ForMethods
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
	# perl 5.008 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
	# strict
	# echo dev-lang/perl
	# warnings
	# echo dev-lang/perl
}
perl_meta_test() {
	# Cwd
	echo virtual/perl-File-Spec
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# IO::Handle
	echo virtual/perl-IO
	# IPC::Open3
	# echo dev-lang/perl
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Module::CoreList 2.77 ( 2.770.0 )
	echo \>=virtual/perl-Module-CoreList-2.770.0
	# Perl::PrereqScanner 1.016 ( 1.16.0 )
	echo \>=dev-perl/Perl-PrereqScanner-1.16.0
	# Test::DZil
	echo dev-perl/Dist-Zilla
	# Test::Deep
	echo dev-perl/Test-Deep
	# Test::Deep::JSON
	echo dev-perl/Test-Deep-JSON
	# Test::MinimumVersion
	echo dev-perl/Test-MinimumVersion
	# Test::More 0.94 ( 0.940.0 )
	echo \>=virtual/perl-Test-Simple-0.94
	# Test::Warnings 0.009 ( 0.9.0 )
	echo \>=dev-perl/Test-Warnings-0.9.0
	# if
	# echo virtual/perl-if
	# version
	echo virtual/perl-version
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
