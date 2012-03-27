# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=GFUJI
MODULE_VERSION=0.003
inherit perl-module

DESCRIPTION='Polymorphic data cloning'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Devel::PPPort 3.19 ( 3.190.0 )
	echo \>=virtual/perl-Devel-PPPort-3.190.0
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
}
perl_meta_build() {
	# Devel::PPPort 3.19 ( 3.190.0 )
	echo \>=virtual/perl-Devel-PPPort-3.190.0
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
	# ExtUtils::ParseXS 2.21 ( 2.210.0 )
	echo \>=virtual/perl-ExtUtils-ParseXS-2.21.00
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
	# Test::Requires 0.03 ( 0.30.0 )
	echo \>=dev-perl/Test-Requires-0.03
}
perl_meta_runtime() {
	# XSLoader 0.1 ( 0.100.0 )
	echo \>=virtual/perl-XSLoader-0.10
	# parent
	echo virtual/perl-parent
	# perl v5.8.1 ( 5.8.1 )
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
SRC_TEST="do"
