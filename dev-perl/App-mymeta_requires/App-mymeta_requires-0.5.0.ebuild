# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=0.005
inherit perl-module

DESCRIPTION='Extract module requirements from MYMETA files'
LICENSE=" Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# CPAN::Meta
	echo virtual/perl-CPAN-Meta
	# CPAN::Meta::Requirements
	echo virtual/perl-CPAN-Meta-Requirements
	# Class::Load
	echo dev-perl/Class-Load
	# File::Basename
	echo dev-lang/perl
	# Getopt::Lucid
	echo dev-perl/Getopt-Lucid
	# Log::Dispatchouli
	echo dev-perl/Log-Dispatchouli
	# Object::Tiny
	echo dev-perl/Object-Tiny
	# Pod::Usage
	echo virtual/perl-Pod-Usage
	# autodie 2.00 ( 2.0.0 )
	echo \>=virtual/perl-autodie-2.0.0
	# perl 5.010 ( 5.10.0 )
	echo \>=dev-lang/perl-5.10.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Capture::Tiny
	echo dev-perl/Capture-Tiny
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# File::Find
	echo dev-lang/perl
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# File::Temp
	echo virtual/perl-File-Temp
	# File::pushd
	echo dev-perl/File-pushd
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Test::Deep
	echo dev-perl/Test-Deep
	# Test::More 0.92 ( 0.920.0 )
	echo \>=virtual/perl-Test-Simple-0.92
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
