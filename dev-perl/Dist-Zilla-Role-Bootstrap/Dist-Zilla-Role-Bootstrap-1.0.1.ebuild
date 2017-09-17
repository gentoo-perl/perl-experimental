# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=1.000001
inherit perl-module

DESCRIPTION='Shared logic for bootstrap things.'
LICENSE=" || ( Artistic GPL-2 )"
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
	# Dist::Zilla::Role::Plugin
	echo dev-perl/Dist-Zilla
	# List::UtilsBy
	echo dev-perl/List-UtilsBy
	# Moose::Role
	echo dev-perl/Moose
	# MooseX::AttributeShortcuts 0.015 ( 0.15.0 )
	echo \>=dev-perl/MooseX-AttributeShortcuts-0.15.0
	# Path::Tiny
	echo dev-perl/Path-Tiny
	# lib
	# echo virtual/perl-lib
	# perl 5.008 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
	# strict
	echo dev-lang/perl
	# utf8
	echo dev-lang/perl
	# version
	echo virtual/perl-version
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Dist::Zilla::Chrome::Test
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Dist::Builder
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::MVP::Assembler::Zilla
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::MVP::Section
	echo dev-perl/Dist-Zilla
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# File::Copy::Recursive
	echo dev-perl/File-Copy-Recursive
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# FindBin
	echo dev-lang/perl
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Moose
	echo dev-perl/Moose
	# Test::More 0.89 ( 0.890.0 )
	echo \>=virtual/perl-Test-Simple-0.89
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
