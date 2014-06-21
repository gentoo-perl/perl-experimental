# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=YVES
MODULE_VERSION=3.001
inherit perl-module

DESCRIPTION='Fast, compact, powerful binary deserialization'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# Data::Dumper
	echo virtual/perl-Data-Dumper
	# ExtUtils::ParseXS 2.21 ( 2.210.0 )
	echo \>=virtual/perl-ExtUtils-ParseXS-2.21
	# File::Path
	echo virtual/perl-File-Path
	# File::Spec
	echo virtual/perl-File-Spec
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Test::LongString
	echo dev-perl/Test-LongString
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
	# Test::Warn
	echo dev-perl/Test-Warn
	# XSLoader
	echo virtual/perl-XSLoader
}
perl_meta_runtime() {
	# XSLoader
	echo virtual/perl-XSLoader
	# perl 5.008 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
