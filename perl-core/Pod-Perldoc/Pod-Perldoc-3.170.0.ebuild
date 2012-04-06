# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=MALLEN
MODULE_VERSION=3.17
inherit perl-module

DESCRIPTION='Look up Perl documentation in Pod format.'
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
	# Config
	#echo unresolved
	# Encode
	echo virtual/perl-Encode
	# Fcntl
	echo dev-lang/perl
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# File::Temp 0.22 ( 0.220.0 )
	echo \>=virtual/perl-File-Temp-0.220.0
	# IO::Select
	echo virtual/perl-IO
	# Pod::Man 2.18 ( 2.180.0 )
	echo \>=virtual/perl-podlators-2.1.2
	# Pod::Simple::RTF 3.16 ( 3.160.0 )
	echo \>=virtual/perl-Pod-Simple-3.160.0
	# Pod::Simple::XMLOutStream 3.16 ( 3.160.0 )
	echo \>=virtual/perl-Pod-Simple-3.160.0
	# Pod::Text
	echo virtual/perl-podlators
	# Symbol
	echo dev-lang/perl
	# Test::More
	echo virtual/perl-Test-Simple
	# Text::ParseWords
	# echo dev-perl/Text-ParseWords
	# parent
	echo virtual/perl-parent
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
