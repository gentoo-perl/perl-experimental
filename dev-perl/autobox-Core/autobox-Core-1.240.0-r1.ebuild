# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=JARICH
MODULE_VERSION=1.24
inherit perl-module

DESCRIPTION='Provide core functions to autoboxed scalars, arrays and hashes.'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.46 ( 6.460.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.46
}
perl_meta_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_runtime() {
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
	# autobox 2.71 ( 2.710.0 )
	echo \>=dev-perl/autobox-2.710.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
