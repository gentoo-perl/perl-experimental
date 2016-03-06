# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=MARKF
MODULE_VERSION=1.00
inherit perl-module

DESCRIPTION='handy utf8 tests'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
	# Test::Builder::Tester 0.09 ( 0.90.0 )
	echo \>=virtual/perl-Test-Simple-0.72
}
perl_meta_runtime() {
	# Test::Builder
	echo virtual/perl-Test-Simple
	# perl v5.7.3 ( 5.7.3 )
	echo \>=dev-lang/perl-5.7.3
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
