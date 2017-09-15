# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=FULLERMD
MODULE_VERSION=1.21
inherit perl-module

DESCRIPTION='Build structures from CGI data'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.3002 ( 6.300.200 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.300.200
}
perl_meta_build() {
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::Deep
	echo dev-perl/Test-Deep
}
perl_meta_runtime() {
	# Storable
	echo virtual/perl-Storable
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
#SRC_TEST="do parallel"
