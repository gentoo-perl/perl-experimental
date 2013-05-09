# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=LEONT
MODULE_VERSION=0.021
inherit perl-module

DESCRIPTION='Various portability utilities for module builders'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.300.0
}
perl_meta_runtime() {
	# Carp
	echo dev-lang/perl
	# Config
	#echo unresolved
	# Exporter 5.57 ( 5.570.0 )
	echo \>=virtual/perl-Exporter-5.570.0
	# File::Basename
	echo dev-lang/perl
	# File::Copy
	echo dev-lang/perl
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# Module::Load
	echo virtual/perl-Module-Load
	# Text::ParseWords 3.24 ( 3.240.0 )
	echo \>=virtual/perl-Text-ParseWords-3.240.0
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Cwd
	echo virtual/perl-File-Spec
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# Test::More
	echo virtual/perl-Test-Simple
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
