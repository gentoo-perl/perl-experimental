# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=JQUELIN
MODULE_VERSION=1.011
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
	echo \>=virtual/perl-CPAN-Meta-2.120.630
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# FindBin
	echo dev-lang/perl
	# Getopt::Long
	echo virtual/perl-Getopt-Long
	# List::MoreUtils
	echo dev-perl/List-MoreUtils
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Moose
	echo dev-perl/Moose
	# Moose::Role
	echo dev-perl/Moose
	# PPI 1.205 ( 1.205.0 )
	echo \>=dev-perl/PPI-1.205.0
	# Params::Util
	echo dev-perl/Params-Util
	# String::RewritePrefix 0.005 ( 0.5.0 )
	echo \>=dev-perl/String-RewritePrefix-0.5.0
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
	# File::Temp
	echo virtual/perl-File-Temp
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
