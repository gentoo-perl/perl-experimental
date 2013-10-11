# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=NEILB
MODULE_VERSION=0.09
inherit perl-module

DESCRIPTION='get the full path to a locally installed module'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_build() {
	# Devel::FindPerl
	echo dev-perl/Devel-FindPerl
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# FindBin 0.05 ( 0.50.0 )
	# echo \>=dev-lang/perl-0.50.0
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
}
perl_meta_runtime() {
	# Exporter
	echo virtual/perl-Exporter
	# strict
	# echo dev-lang/perl
	# warnings
	# echo dev-lang/perl
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
