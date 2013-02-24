# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=PJF
MODULE_VERSION=2.16
inherit perl-module

DESCRIPTION='Replace functions with ones that succeed or die with lexical scope'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# B
	# echo dev-lang/perl
	# Carp
	# echo dev-lang/perl
	# Config
	#echo unresolved
	# Exporter
	echo virtual/perl-Exporter
	# Fcntl
	# echo dev-lang/perl
	# POSIX
	#echo dev-lang/perl
	# Tie::RefHash
	echo dev-perl/Tie-RefHash
	# base
	# echo virtual/perl-base
	# constant
	echo virtual/perl-constant
	# if
	# echo virtual/perl-if
	# overload
	# echo dev-lang/perl
	# perl 5.008004 ( 5.8.4 )
	echo \>=dev-lang/perl-5.8.4
	# strict
	# echo dev-lang/perl
	# warnings
	# echo dev-lang/perl
}
perl_meta_test() {
	# File::Copy
	# echo dev-lang/perl
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Temp
	echo virtual/perl-File-Temp
	# FindBin
	# echo dev-lang/perl
	# IO::Handle
	echo virtual/perl-IO
	# Socket
	echo virtual/perl-Socket
	# Test::More
	echo virtual/perl-Test-Simple
	# open
	# echo dev-lang/perl
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
