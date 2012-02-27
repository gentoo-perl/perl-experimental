# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=DOMM
MODULE_VERSION=0.24
inherit perl-module

DESCRIPTION='Find out what modules are used'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.38 ( 0.380.0 )
	echo \>=virtual/perl-Module-Build-0.380.0
}
perl_meta_build() {
	# Test::Deep 0.087 ( 0.87.0 )
	echo \>=dev-perl/Test-Deep-0.087
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::NoWarnings
	echo dev-perl/Test-NoWarnings
	# Test::Pod
	echo dev-perl/Test-Pod
	# Test::Pod::Coverage
	echo dev-perl/Test-Pod-Coverage
	# UNIVERSAL::require
	echo dev-perl/UNIVERSAL-require
}
perl_meta_runtime() {
	# Parse::RecDescent 1.94 ( 1.940.0 )
	echo \>=dev-perl/Parse-RecDescent-1.940.0
	# Pod::Strip 1.00 ( 1.0.0 )
	echo \>=dev-perl/Pod-Strip-1.0.0
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
SRC_TEST="do"
