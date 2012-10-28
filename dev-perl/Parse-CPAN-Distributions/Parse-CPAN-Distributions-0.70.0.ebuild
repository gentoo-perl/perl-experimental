# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=BARBIE
MODULE_VERSION=0.07
inherit perl-module

DESCRIPTION='Provides an index for current CPAN distributions'
LICENSE=" Artistic-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_runtime() {
	# CPAN::DistnameInfo
	echo dev-perl/CPAN-DistnameInfo
	# File::Basename
	echo dev-lang/perl
	# File::Path
	echo virtual/perl-File-Path
	# File::Slurp
	echo dev-perl/File-Slurp
	# File::Temp
	echo virtual/perl-File-Temp
	# IO::File
	echo virtual/perl-IO
	# IO::Zlib
	echo virtual/perl-IO-Zlib
	# LWP::UserAgent
	echo dev-perl/libwww-perl
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# version
	echo virtual/perl-version
}
perl_meta_test() {
	# Test::More 0.70 ( 0.700.0 )
	echo \>=virtual/perl-Test-Simple-0.70
}
DEPEND="
	$(perl_meta_build)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
