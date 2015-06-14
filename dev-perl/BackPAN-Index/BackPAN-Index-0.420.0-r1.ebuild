# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=MSCHWERN
MODULE_VERSION=0.42
inherit perl-module

DESCRIPTION='An interface to the BackPAN index'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.340201 ( 0.340.201 )
	echo \>=dev-perl/Module-Build-0.34.0201
}
perl_meta_build() {
	# Test::Compile 0.11 ( 0.110.0 )
	echo \>=dev-perl/Test-Compile-0.110.0
	# Test::More 0.90 ( 0.900.0 )
	echo \>=virtual/perl-Test-Simple-0.90
}
perl_meta_runtime() {
	# App::Cache 0.37 ( 0.370.0 )
	echo \>=dev-perl/App-Cache-0.370.0
	# Archive::Extract
	echo dev-perl/Archive-Extract
	# CLASS 1.00 ( 1.0.0 )
	echo \>=dev-perl/CLASS-1.0.0
	# CPAN::DistnameInfo 0.09 ( 0.90.0 )
	echo \>=dev-perl/CPAN-DistnameInfo-0.90.0
	# DBD::SQLite 1.25 ( 1.250.0 )
	echo \>=dev-perl/DBD-SQLite-1.250.0
	# DBIx::Class 0.08109 ( 0.81.90 )
	echo \>=dev-perl/DBIx-Class-0.81.90
	# LWP::Simple
	echo dev-perl/libwww-perl
	# Mouse 0.64 ( 0.640.0 )
	echo \>=dev-perl/Mouse-0.640.0
	# Path::Class 0.17 ( 0.170.0 )
	echo \>=dev-perl/Path-Class-0.170.0
	# URI 1.54 ( 1.540.0 )
	echo \>=dev-perl/URI-1.540.0
	# autodie
	echo virtual/perl-autodie
	# parent
	echo virtual/perl-parent
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
SRC_TEST="do"
