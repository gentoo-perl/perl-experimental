# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=1.017
inherit perl-module

DESCRIPTION='a tool to scan your Perl code for its prerequisites'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# CPAN::Meta::Requirements 2.120630 ( 2.120.630 )
	echo \>=virtual/perl-CPAN-Meta-Requirements-2.120.630
	# File::Find
	echo dev-lang/perl
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# FindBin
	echo dev-lang/perl
	# Getopt::Long
	echo virtual/perl-Getopt-Long
	# Getopt::Long::Descriptive
	echo dev-perl/Getopt-Long-Descriptive
	# List::MoreUtils
	echo dev-perl/List-MoreUtils
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Module::Path
	echo dev-perl/Module-Path
	# Moose
	echo dev-perl/Moose
	# Moose::Role
	echo dev-perl/Moose
	# PPI 1.215 ( 1.215.0 )
	echo \>=dev-perl/PPI-1.215.0
	# Params::Util
	echo dev-perl/Params-Util
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# String::RewritePrefix 0.005 ( 0.5.0 )
	echo \>=dev-perl/String-RewritePrefix-0.5.0
	# lib
	# echo virtual/perl-lib
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
	# perl 5.008 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Temp
	echo virtual/perl-File-Temp
	# IO::Handle
	echo virtual/perl-IO
	# IPC::Open3
	# echo dev-lang/perl
	# PPI::Document
	echo dev-perl/PPI
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
	# Try::Tiny
	echo dev-perl/Try-Tiny
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
