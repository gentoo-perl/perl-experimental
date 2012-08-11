# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=FANGLY
MODULE_VERSION=0.3.7
inherit perl-module

DESCRIPTION='Executable Uniform Command-Line Interface Descriptions'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo " || ( virtual/perl-Module-Build >=virtual/perl-ExtUtils-MakeMaker-6.36 )"
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo " || ( virtual/perl-Module-Build >=virtual/perl-ExtUtils-MakeMaker-6.36 )"
	# Pod::Checker
	echo virtual/perl-PodParser
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# File::Basename
	echo dev-lang/perl
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Pod::PlainText
	echo virtual/perl-PodParser
	# Pod::Select
	echo virtual/perl-PodParser
	# Text::Balanced
	echo virtual/perl-Text-Balanced
	# perl 5.005 ( 5.5.0 )
	echo \>=dev-lang/perl-5.5.0
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
