# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=AVIF
MODULE_VERSION=1.9
inherit perl-module

DESCRIPTION='A data structure optimized for prefix lookup.'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.62 ( 6.620.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.620.0
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.62 ( 6.620.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.620.0
	# Pod::Coverage 0.18 ( 0.180.0 )
	echo \>=dev-perl/Pod-Coverage-0.180.0
	# Test::Pod 1.26 ( 1.260.0 )
	echo \>=dev-perl/Test-Pod-1.26
	# Test::Pod::Coverage 1.08 ( 1.80.0 )
	echo \>=dev-perl/Test-Pod-Coverage-1.80.0
}
perl_meta_runtime() {
	# perl v5.8.0 ( 5.8.0 )
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
