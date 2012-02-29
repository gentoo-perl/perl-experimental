# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=ADIE
MODULE_VERSION=0.13
inherit perl-module

DESCRIPTION='DEPRECIATED: Specify fine granularity test plans'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.38 ( 0.380.0 )
	echo \>=virtual/perl-Module-Build-0.380.0
}
perl_meta_runtime() {
	# Test::Builder 0.17 ( 0.170.0 )
	echo \>=virtual/perl-Test-Simple-0.47
	# Test::Builder::Tester 1.01 ( 1.10.0 )
	echo \>=virtual/perl-Test-Simple-0.62
	# Test::Exception 0.15 ( 0.150.0 )
	echo \>=dev-perl/Test-Exception-0.15
	# Test::More 0.47 ( 0.470.0 )
	echo \>=virtual/perl-Test-Simple-0.47
	# perl v5.6.1 ( 5.6.1 )
	echo \>=dev-lang/perl-5.6.1
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
