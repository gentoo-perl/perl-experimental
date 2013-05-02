# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=BRICAS
MODULE_VERSION=0.20
inherit perl-module

DESCRIPTION='Read and write Changes files'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# Text::Wrap
	echo virtual/perl-Text-Tabs+Wrap
	# perl v5.10.0 ( 5.10.0 )
	echo \>=dev-lang/perl-5.10.0
	# version 0.79 ( 0.790.0 )
	echo \>=virtual/perl-version-0.790.0
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
