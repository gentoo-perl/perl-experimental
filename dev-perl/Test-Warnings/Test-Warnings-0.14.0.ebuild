# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.014
inherit perl-mb-tiny

DESCRIPTION='Test for warnings and the lack of them'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
	# Module::Build::Tiny 0.035 ( 0.35.0 )
	echo \>=dev-perl/Module-Build-Tiny-0.35.0
}
perl_meta_runtime() {
	# Exporter
	echo virtual/perl-Exporter
	# Test::Builder
	echo virtual/perl-Test-Simple
	# parent
	echo virtual/perl-parent
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Test::Deep
	echo dev-perl/Test-Deep
	# Test::More 0.94 ( 0.940.0 )
	echo \>=virtual/perl-Test-Simple-0.94
	# Test::Tester 0.108 ( 0.108.0 )
	echo \>=dev-perl/Test-Tester-0.108.0
	# if
	# echo virtual/perl-if
	# version
	echo virtual/perl-version
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
