# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=MAREKR
MODULE_VERSION=1.61
inherit perl-module

DESCRIPTION='Pod::Usage extracts POD documentation and shows usage information'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_runtime() {
	# Cwd
	echo virtual/perl-File-Spec
	# File::Basename
	echo dev-lang/perl
	# Pod::Parser 1.60 ( 1.600.0 )
	echo \>=virtual/perl-PodParser-1.600.0
	# Test::More 0.6 ( 0.600.0 )
	echo \>=virtual/perl-Test-Simple-0.600.0
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
