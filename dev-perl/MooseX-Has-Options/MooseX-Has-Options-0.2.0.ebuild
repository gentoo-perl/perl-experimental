# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=PSHANGOV
MODULE_VERSION=0.002
inherit perl-module

DESCRIPTION='Succinct options for Moose'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.31 ( 6.310.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.31
}
perl_meta_build() {
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# Moose
	echo dev-perl/Moose
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::Most
	echo dev-perl/Test-Most
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
}
perl_meta_runtime() {
	# Carp
	# echo virtual/perl-Carp
	# Package::Stash 0.18 ( 0.180.0 )
	echo \>=dev-perl/Package-Stash-0.180.0
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
