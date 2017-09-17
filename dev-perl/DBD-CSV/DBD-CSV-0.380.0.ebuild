# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=HMBRAND
MODULE_A_EXT="tgz"
MODULE_VERSION=0.38
inherit perl-module

DESCRIPTION='DBI driver for CSV files'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# Config
	#echo unresolved
	return;
}
perl_meta_runtime() {
	# DBD::File 0.41 ( 0.410.0 )
	echo \>=dev-perl/DBI-0.410.0
	# DBI 1.623 ( 1.623.0 )
	echo \>=dev-perl/DBI-1.623.0
	# SQL::Statement 1.402 ( 1.402.0 )
	echo \>=dev-perl/SQL-Statement-1.402.0
	# Text::CSV_XS 0.94 ( 0.940.0 )
	echo \>=dev-perl/Text-CSV_XS-0.940.0
	# perl 5.008001 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
}
perl_meta_test() {
	# Cwd
	echo virtual/perl-File-Spec
	# Encode
	echo virtual/perl-Encode
	# Test::Harness
	echo virtual/perl-Test-Harness
	# Test::More 0.90 ( 0.900.0 )
	echo \>=virtual/perl-Test-Simple-0.90
	# charnames
	echo dev-lang/perl
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
