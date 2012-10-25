# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=TOKUHIROM
MODULE_VERSION=0.24
inherit perl-module

DESCRIPTION='detect outdated CPAN modules in your environment'
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
	# CPAN::DistnameInfo 0.1 ( 0.100.0 )
	echo \>=dev-perl/CPAN-DistnameInfo-0.100.0
	# ExtUtils::MakeMaker 6.56 ( 6.560.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.56
	# IO::Zlib
	echo virtual/perl-IO-Zlib
	# LWP
	echo dev-perl/libwww-perl
	# Module::CoreList
	echo virtual/perl-Module-CoreList
	# Module::Metadata 1.000007 ( 1.0.7 )
	echo \>=virtual/perl-Module-Metadata-1.0.7
	# local::lib 1.006008 ( 1.6.8 )
	echo \>=dev-perl/local-lib-1.6.8
	# perl 5.008001 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
	# version
	echo virtual/perl-version
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
