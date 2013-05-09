# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=GUGOD
MODULE_VERSION=0.63
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
	# IO::All 0.46 ( 0.460.0 )
	echo \>=dev-perl/IO-All-0.460.0
	# Path::Class
	echo dev-perl/Path-Class
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::NoWarnings
	echo dev-perl/Test-NoWarnings
	# Test::Output
	echo dev-perl/Test-Output
	# Test::Simple 0.98 ( 0.980.0 )
	echo \>=virtual/perl-Test-Simple-0.980.0
	# Test::Spec
	echo dev-perl/Test-Spec
}
perl_meta_runtime() {
	# CPAN::Perl::Releases 1.08 ( 1.80.0 )
	echo \>=dev-perl/CPAN-Perl-Releases-1.80.0
	# Capture::Tiny 0.21 ( 0.210.0 )
	echo \>=dev-perl/Capture-Tiny-0.210.0
	# Devel::PatchPerl 0.84 ( 0.840.0 )
	echo \>=dev-perl/Devel-PatchPerl-0.840.0
	# local::lib 1.008009 ( 1.8.9 )
	echo \>=dev-perl/local-lib-1.8.9
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
SRC_TEST="do parallel"
