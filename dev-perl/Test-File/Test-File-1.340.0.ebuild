# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=BAREFOOT
MODULE_VERSION=1.34
inherit perl-module

DESCRIPTION='Check file attributes'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_runtime() {
	# Test::Builder 0.33 ( 0.330.0 )
	echo \>=virtual/perl-Test-Simple-0.63
	# Test::Builder::Tester 1.04 ( 1.40.0 )
	echo \>=virtual/perl-Test-Simple-0.64
	# Test::Manifest 1.14 ( 1.140.0 )
	echo \>=dev-perl/Test-Manifest-1.140.0
	# Test::More 0.65 ( 0.650.0 )
	echo \>=virtual/perl-Test-Simple-0.65
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
