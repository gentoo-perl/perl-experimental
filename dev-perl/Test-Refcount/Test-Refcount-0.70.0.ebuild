# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=PEVANS
MODULE_VERSION=0.07
inherit perl-module

DESCRIPTION='assert reference counts on objects'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# Module::Build 0.36 ( 0.360.0 )
	echo \>=dev-perl/Module-Build-0.36.00
}
perl_meta_build() {
	# Test::Builder::Tester
	echo virtual/perl-Test-Simple
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# B
	echo dev-lang/perl
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Test::Builder
	echo virtual/perl-Test-Simple
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
