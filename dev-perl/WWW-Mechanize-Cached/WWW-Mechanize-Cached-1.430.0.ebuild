# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=OALDERS
MODULE_VERSION=1.43
inherit perl-module

DESCRIPTION='Cache response to be polite'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=dev-perl/Module-Build-0.36.01
}
perl_meta_build() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=dev-perl/Module-Build-0.36.01
}
perl_meta_runtime() {
	# Cache::FileCache
	echo dev-perl/Cache-Cache
	# Carp
	# echo virtual/perl-Carp
	# Data::Dump
	echo dev-perl/Data-Dump
	# Moose
	echo dev-perl/Moose
	# Storable 2.21 ( 2.210.0 )
	echo \>=virtual/perl-Storable-2.210.0
	# WWW::Mechanize
	echo dev-perl/WWW-Mechanize
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Devel::SimpleTrace
	echo dev-perl/Devel-SimpleTrace
	# File::Spec
	echo virtual/perl-File-Spec
	# Find::Lib
	echo dev-perl/Find-Lib
	# HTTP::Request
	echo dev-perl/HTTP-Message
	# Path::Class
	echo dev-perl/Path-Class
	# Test::More
	echo virtual/perl-Test-Simple
	# constant
	echo virtual/perl-constant
	# lib
	# echo virtual/perl-lib
	# vars
	echo dev-lang/perl
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
