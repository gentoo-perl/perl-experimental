# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=1.000
inherit perl-module

DESCRIPTION='Iterative, recursive file finder'
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
	# Data::Clone
	echo dev-perl/Data-Clone
	# File::Basename
	echo dev-lang/perl
	# File::Spec
	echo virtual/perl-File-Spec
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Number::Compare 0.02 ( 0.20.0 )
	echo \>=dev-perl/Number-Compare-0.20.0
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Text::Glob
	echo dev-perl/Text-Glob
	# Try::Tiny
	echo dev-perl/Try-Tiny
	# namespace::clean
	echo dev-perl/namespace-clean
	# perl 5.012 ( 5.12.0 )
	echo \>=dev-lang/perl-5.12.0
	# re
	echo dev-lang/perl
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
	# warnings::register
	echo dev-lang/perl
}
perl_meta_test() {
	# Config
	#echo unresolved
	# Exporter
	echo virtual/perl-Exporter
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
	# Path::Tiny
	echo dev-perl/Path-Tiny
	# Test::Deep
	echo dev-perl/Test-Deep
	# Test::Filename 0.03 ( 0.30.0 )
	echo \>=dev-perl/Test-Filename-0.30.0
	# Test::More 0.92 ( 0.920.0 )
	echo \>=virtual/perl-Test-Simple-0.92
	# autodie
	echo virtual/perl-autodie
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
