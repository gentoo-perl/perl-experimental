# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=GUGOD
MODULE_VERSION=0.30
inherit perl-module

DESCRIPTION='Manage perl installations in your $HOME'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
meta_build_dep() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
	# File::Temp
	echo virtual/perl-File-Temp
	# IO::All
	echo dev-perl/IO-All
	# Path::Class
	echo dev-perl/Path-Class
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::Output
	echo dev-perl/Test-Output
	# Test::Simple 0.98 ( 0.980.0 )
	echo \>=virtual/perl-Test-Simple-0.980.0
	# Test::Spec
	echo dev-perl/Test-Spec
}
meta_configure_dep() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
}
meta_runtime_dep() {
	# Devel::PatchPerl 0.46 ( 0.460.0 )
	echo \>=dev-perl/Devel-PatchPerl-0.460.0
	# File::Path::Tiny 0.1 ( 0.100.0 )
	echo \>=dev-perl/File-Path-Tiny-0.100.0
	# Text::Levenshtein 0.04 ( 0.40.0 )
	echo \>=dev-perl/Text-Levenshtein-0.40.0
	# local::lib 1.0 ( 1.0.0 )
	echo \>=dev-perl/local-lib-1.0.0
	# perl v5.8.0 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
}
DEPEND="
	$(meta_configure_dep)
	$(meta_build_dep)
	$(meta_runtime_dep)
"
RDEPEND="$(meta_runtime_dep)"
SRC_TEST="do"
