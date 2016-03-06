# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=0.20
inherit perl-module

DESCRIPTION='Generate Pod from inline wiki style text'
LICENSE=" Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Carp
	# echo virtual/perl-Carp
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# File::Basename
	echo dev-lang/perl
	# File::Path
	echo virtual/perl-File-Path
	# File::pushd
	echo dev-perl/File-pushd
	# Getopt::Lucid 0.14 ( 0.140.0 )
	echo \>=dev-perl/Getopt-Lucid-0.140.0
	# IO::File
	echo virtual/perl-IO
	# IO::String 1.06 ( 1.60.0 )
	echo \>=dev-perl/IO-String-1.60.0
	# Parse::RecDescent 1.967006 ( 1.967.6 )
	echo \>=dev-perl/Parse-RecDescent-1.967.6
	# Pod::Usage 1 ( 1.0.0 )
	echo \>=virtual/perl-Pod-Parser-1.0.0
	# Scalar::Util 1.02 ( 1.20.0 )
	echo \>=virtual/perl-Scalar-List-Utils-1.20.0
	# Text::Balanced
	echo virtual/perl-Text-Balanced
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# vars
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Carp
	# echo virtual/perl-Carp
	# Cwd
	echo virtual/perl-File-Spec
	# File::Basename
	echo dev-lang/perl
	# File::Find 1 ( 1.0.0 )
	echo \>=dev-lang/perl-5.7.3
	# File::Spec 3 ( 3.0.0 )
	echo \>=virtual/perl-File-Spec-3.0.0
	# File::Temp
	echo virtual/perl-File-Temp
	# IO::String
	echo dev-perl/IO-String
	# IPC::Run3 0.033 ( 0.33.0 )
	echo \>=dev-perl/IPC-Run3-0.033
	# Probe::Perl 0.01 ( 0.10.0 )
	echo \>=dev-perl/Probe-Perl-0.10.0
	# Test::Builder
	echo virtual/perl-Test-Simple
	# Test::More
	echo virtual/perl-Test-Simple
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
