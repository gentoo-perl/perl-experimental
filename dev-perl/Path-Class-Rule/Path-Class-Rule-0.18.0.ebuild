# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=0.018
inherit perl-module

DESCRIPTION='Iterative, recursive file finder with Path::Class'
LICENSE=" Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Path::Class
	echo dev-perl/Path-Class
	# Path::Iterator::Rule 0.002 ( 0.2.0 )
	echo \>=dev-perl/Path-Iterator-Rule-0.2.0
	# namespace::clean
	echo dev-perl/namespace-clean
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Config
	#echo unresolved
	# Exporter
	echo virtual/perl-Exporter
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# File::pushd
	echo dev-perl/File-pushd
	# Test::Deep
	echo dev-perl/Test-Deep
	# Test::More 0.92 ( 0.920.0 )
	echo \>=virtual/perl-Test-Simple-0.920.0
	# autodie
	echo virtual/perl-autodie
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
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
