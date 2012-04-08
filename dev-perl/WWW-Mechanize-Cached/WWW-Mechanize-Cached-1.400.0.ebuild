# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=OALDERS
MODULE_VERSION=1.40
inherit perl-module

DESCRIPTION='Cache response to be polite'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.31 ( 6.310.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.31
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=virtual/perl-Module-Build-0.36.01
}
perl_meta_build() {
	# Devel::SimpleTrace
	echo dev-perl/Devel-SimpleTrace
	# English
	echo dev-lang/perl
	# File::Spec
	echo virtual/perl-File-Spec
	# Find::Lib
	echo dev-perl/Find-Lib
	# HTTP::Request
	echo dev-perl/HTTP-Message
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=virtual/perl-Module-Build-0.36.01
	# Path::Class
	echo dev-perl/Path-Class
	# Test::More
	echo virtual/perl-Test-Simple
	# constant
	echo virtual/perl-constant
	# vars
	echo dev-lang/perl
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
