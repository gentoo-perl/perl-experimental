# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=0.008
inherit perl-module

DESCRIPTION='Add test failures if warnings are caught'
LICENSE=" Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.17 ( 6.170.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.17
}
perl_meta_runtime() {
	# Carp
	# echo virtual/perl-Carp
	# Cwd
	echo virtual/perl-File-Spec
	# File::Spec
	echo virtual/perl-File-Spec
	# Test::More 0.86 ( 0.860.0 )
	echo \>=virtual/perl-Test-Simple-0.86
	# perl 5.008001 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
	# strict
	# echo dev-lang/perl
	# warnings
	# echo dev-lang/perl
}
perl_meta_test() {
	# Capture::Tiny 0.12 ( 0.120.0 )
	echo \>=dev-perl/Capture-Tiny-0.120.0
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# File::Temp
	echo virtual/perl-File-Temp
	# IO::Handle
	echo virtual/perl-IO
	# IPC::Open3
	echo dev-lang/perl
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
	# constant
	echo virtual/perl-constant
	# lib
	# echo virtual/perl-lib
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
