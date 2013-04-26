# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=GARU
MODULE_VERSION=1.2010
inherit perl-module

DESCRIPTION='Adds CPAN Testers reporting to CPAN.pm'
LICENSE=" Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# CPAN 1.9301 ( 1.930.100 )
	echo \>=virtual/perl-CPAN-1.930.100
	# CPAN::Version
	echo virtual/perl-CPAN
	# Capture::Tiny
	echo dev-perl/Capture-Tiny
	# Carp
	echo dev-lang/perl
	# Config
	#echo unresolved
	# Config::Tiny 2.08 ( 2.80.0 )
	echo \>=dev-perl/Config-Tiny-2.80.0
	# Devel::Autoflush 0.04 ( 0.40.0 )
	echo \>=dev-perl/Devel-Autoflush-0.40.0
	# Exporter
	echo virtual/perl-Exporter
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
	# Fcntl
	echo dev-lang/perl
	# File::Basename
	echo dev-lang/perl
	# File::Find
	echo dev-lang/perl
	# File::Glob
	echo dev-lang/perl
	# File::HomeDir 0.58 ( 0.580.0 )
	echo \>=dev-perl/File-HomeDir-0.580.0
	# File::Path
	echo virtual/perl-File-Path
	# File::Spec 3.19 ( 3.190.0 )
	echo \>=virtual/perl-File-Spec-3.19
	# File::Temp 0.16 ( 0.160.0 )
	echo \>=virtual/perl-File-Temp-0.160.0
	# IO::File
	echo virtual/perl-IO
	# IPC::Cmd 0.76 ( 0.760.0 )
	echo \>=virtual/perl-IPC-Cmd-0.760.0
	# Parse::CPAN::Meta
	echo virtual/perl-Parse-CPAN-Meta
	# Probe::Perl
	echo dev-perl/Probe-Perl
	# Test::Reporter 1.54 ( 1.540.0 )
	echo \>=dev-perl/Test-Reporter-1.540.0
	# constant
	# echo virtual/perl-constant
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# vars
	echo dev-lang/perl
}
perl_meta_test() {
	# Archive::Tar 1.54 ( 1.540.0 )
	echo \>=virtual/perl-Archive-Tar-1.54
	# File::Copy::Recursive 0.35 ( 0.350.0 )
	echo \>=dev-perl/File-Copy-Recursive-0.350.0
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# File::pushd 0.32 ( 0.320.0 )
	echo \>=dev-perl/File-pushd-0.320.0
	# IO::CaptureOutput 1.03 ( 1.30.0 )
	echo \>=dev-perl/IO-CaptureOutput-1.30.0
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Test::Harness
	echo virtual/perl-Test-Harness
	# Test::More 0.62 ( 0.620.0 )
	echo \>=virtual/perl-Test-Simple-0.62
	# warnings
	echo dev-lang/perl
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
