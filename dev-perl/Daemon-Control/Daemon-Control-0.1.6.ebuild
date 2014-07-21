# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=SYMKAT
MODULE_VERSION=0.001006
inherit perl-module

DESCRIPTION='Create init scripts in Perl'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.880.0
}
perl_meta_runtime() {
	# Cwd
	echo virtual/perl-File-Spec
	# File::Path 2.08 ( 2.80.0 )
	echo \>=virtual/perl-File-Path-2.80.0
	# File::Spec
	echo virtual/perl-File-Spec
	# POSIX
	echo dev-lang/perl
	# perl v5.8.1 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
}
perl_meta_test(){
        # Test::More 0.88 ( 0.880.0 )
        echo \>=virtual/perl-Test-Simple-0.880.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
