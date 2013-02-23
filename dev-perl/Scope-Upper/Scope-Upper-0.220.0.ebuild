# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=VPIT
MODULE_VERSION=0.22
inherit perl-module

DESCRIPTION='Act on upper scopes.'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Config
	#echo unresolved
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# Config
	#echo unresolved
	# Exporter
	echo virtual/perl-Exporter
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# Test::More
	echo virtual/perl-Test-Simple
	# XSLoader
	echo virtual/perl-XSLoader
	# base
	# echo virtual/perl-base
}
perl_meta_runtime() {
	# Exporter
	echo virtual/perl-Exporter
	# XSLoader
	echo virtual/perl-XSLoader
	# base
	# echo virtual/perl-base
	# perl 5.006001 ( 5.6.1 )
	echo \>=dev-lang/perl-5.6.1
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
