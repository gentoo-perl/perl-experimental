# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=BARBIE
MODULE_VERSION=0.20
inherit perl-module

DESCRIPTION='A test module to validate a CPAN META.yml file'
LICENSE=" Artistic-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_runtime() {
	# Test::Builder
	echo virtual/perl-Test-Simple
	# Test::CPAN::Meta::YAML 0.17 ( 0.170.0 )
	echo \>=dev-perl/Test-CPAN-Meta-YAML-0.170.0
	# Test::YAML::Valid 0.03 ( 0.30.0 )
	echo \>=dev-perl/Test-YAML-Valid-0.30.0
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
}
perl_meta_test() {
	# IO::File
	echo virtual/perl-IO
	# Test::More 0.70 ( 0.700.0 )
	echo \>=virtual/perl-Test-Simple-0.70
}
DEPEND="
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
