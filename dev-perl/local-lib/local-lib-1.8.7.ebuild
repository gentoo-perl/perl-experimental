# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=MSTROUT
MODULE_VERSION=1.008007
inherit perl-module

DESCRIPTION='create and use a local lib/ for perl modules with PERL5LIB'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
PATCHES=(
	"${FILESDIR}/${MODULE_VERSION}/0001_No_CPAN.patch"
)
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
}
perl_meta_runtime() {
	# CPAN 1.82 ( 1.820.0 )
	echo \>=virtual/perl-CPAN-1.820.0
	# ExtUtils::Install 1.43 ( 1.430.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-1.430.0
	# ExtUtils::MakeMaker 6.31 ( 6.310.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.310.0
	# Module::Build 0.36 ( 0.360.0 )
	echo \>=virtual/perl-Module-Build-0.360.0
	# perl v5.8.1 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
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
