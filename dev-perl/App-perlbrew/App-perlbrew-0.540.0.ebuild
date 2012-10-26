# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=GUGOD
MODULE_VERSION=0.54
inherit perl-module

DESCRIPTION='Manage perl installations in your $HOME'
LICENSE=" MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
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
	# CPAN::Perl::Releases 0.76 ( 0.760.0 )
	echo \>=dev-perl/CPAN-Perl-Releases-0.760.0
	# Capture::Tiny 0.20 ( 0.200.0 )
	echo \>=dev-perl/Capture-Tiny-0.200.0
	# Devel::PatchPerl 0.76 ( 0.760.0 )
	echo \>=dev-perl/Devel-PatchPerl-0.760.0
	# local::lib 1.008004 ( 1.8.4 )
	echo \>=dev-perl/local-lib-1.8.4
	# perl v5.8.8 ( 5.8.8 )
	echo \>=dev-lang/perl-5.8.8
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
