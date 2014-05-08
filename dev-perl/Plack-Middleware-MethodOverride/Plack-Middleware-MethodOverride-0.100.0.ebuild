# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=DWHEELER
MODULE_VERSION=0.10
inherit perl-module

DESCRIPTION="Override REST methods to Plack apps via POST "
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.300.0
}
perl_meta_build() {
	# Module::Build
	echo virtual/perl-Module-Build
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# Test::Builder
	echo virtual/perl-Test-Simple
	# Plack
	echo \>=dev-perl/Plack-0.992.900
	# perl 5.8.1
	echo \>=dev-lang/perl-5.8.1
	# URI
	echo dev-perl/URI
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
