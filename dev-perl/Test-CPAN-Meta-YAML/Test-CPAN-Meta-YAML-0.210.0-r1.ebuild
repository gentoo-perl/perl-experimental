# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=BARBIE
MODULE_VERSION=0.21
inherit perl-module

DESCRIPTION='Validate your CPAN META.yml file'
LICENSE=" Artistic-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_build() {
	# IO::File
	echo virtual/perl-IO
	# Test::Builder::Tester
	echo virtual/perl-Test-Simple
	# Test::More 0.70 ( 0.700.0 )
	echo \>=virtual/perl-Test-Simple-0.70
}
perl_meta_runtime() {
	# Test::Builder
	echo virtual/perl-Test-Simple
	# Test::YAML::Valid 0.03 ( 0.30.0 )
	echo \>=dev-perl/Test-YAML-Valid-0.30.0
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
}
DEPEND="
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
