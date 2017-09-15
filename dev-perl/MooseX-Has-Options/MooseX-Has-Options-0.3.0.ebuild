# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=PSHANGOV
MODULE_VERSION=0.003
inherit perl-module

DESCRIPTION='Succinct options for Moose'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
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
	# Class::Load
	echo dev-perl/Class-Load
	# List::MoreUtils
	echo dev-perl/List-MoreUtils
	# Package::Stash 0.18 ( 0.180.0 )
	echo \>=dev-perl/Package-Stash-0.180.0
	# String::RewritePrefix
	echo dev-perl/String-RewritePrefix
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
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
