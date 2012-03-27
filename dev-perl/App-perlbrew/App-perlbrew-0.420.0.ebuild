# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=GUGOD
MODULE_VERSION=0.42
inherit perl-module

DESCRIPTION='Manage perl installations in your $HOME'
LICENSE=" MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.62 ( 6.620.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.620.0
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.62 ( 6.620.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.620.0
	# File::Temp
	echo virtual/perl-File-Temp
	# IO::All
	echo dev-perl/IO-All
	# Path::Class
	echo dev-perl/Path-Class
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::Output
	echo dev-perl/Test-Output
	# Test::Simple 0.98 ( 0.980.0 )
	echo \>=virtual/perl-Test-Simple-0.980.0
	# Test::Spec
	echo dev-perl/Test-Spec
}
perl_meta_runtime() {
	# CPAN::Perl::Releases 0.40 ( 0.400.0 )
	echo \>=dev-perl/CPAN-Perl-Releases-0.400.0
	# Capture::Tiny 0.13 ( 0.130.0 )
	echo \>=dev-perl/Capture-Tiny-0.130.0
	# Devel::PatchPerl 0.62 ( 0.620.0 )
	echo \>=dev-perl/Devel-PatchPerl-0.620.0
	# File::Path::Tiny 0.1 ( 0.100.0 )
	echo \>=dev-perl/File-Path-Tiny-0.100.0
	# local::lib 1.008 ( 1.8.0 )
	echo \>=dev-perl/local-lib-1.8.0
	# perl v5.8.0 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
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
