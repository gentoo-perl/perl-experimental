# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=VPIT
MODULE_VERSION=0.08
inherit perl-module

DESCRIPTION='Deparse recursively into subroutines.'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# B::Deparse
	# echo dev-lang/perl
	# Carp
	# echo virtual/perl-Carp
	# Config
	#echo unresolved
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# Test::More
	echo virtual/perl-Test-Simple
	# base
	# echo virtual/perl-base
}
perl_meta_runtime() {
	# B::Deparse
	# echo dev-lang/perl
	# Carp
	# echo virtual/perl-Carp
	# Config
	# echo unresolved
	# base
	# echo virtual/perl-base
	# perl 5.008001 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
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
