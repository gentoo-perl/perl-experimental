# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=1.13
inherit perl-module

DESCRIPTION='a safe, simple inside-out object construction kit'
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
	echo dev-lang/perl
	# Class::ISA
	echo virtual/perl-Class-ISA
	# Exporter
	echo virtual/perl-Exporter
	# Scalar::Util 1.09 ( 1.90.0 )
	echo \>=virtual/perl-Scalar-List-Utils-1.90.0
	# Storable
	echo virtual/perl-Storable
	# overload
	# echo dev-lang/perl
	# perl 5.008 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
	# strict
	echo dev-lang/perl
	# vars
	echo dev-lang/perl
}
perl_meta_test() {
	# Config
	#echo unresolved
	# DynaLoader
	echo dev-lang/perl
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# File::Find
	echo dev-lang/perl
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# File::Temp
	echo virtual/perl-File-Temp
	# IO::File
	echo virtual/perl-IO
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Test::More 0.45 ( 0.450.0 )
	echo \>=virtual/perl-Test-Simple-0.45
	# XSLoader
	echo virtual/perl-XSLoader
	# threads
	echo virtual/perl-threads
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
