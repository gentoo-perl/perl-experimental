# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=RKITOVER
MODULE_VERSION=0.18
inherit perl-module

DESCRIPTION='Inflect short English Phrases'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Exporter
	echo virtual/perl-Exporter
	# Lingua::EN::FindNumber
	echo dev-perl/Lingua-EN-FindNumber
	# Lingua::EN::Inflect
	echo dev-perl/Lingua-EN-Inflect
	# Lingua::EN::Inflect::Number
	echo dev-perl/Lingua-EN-Inflect-Number
	# Lingua::EN::Number::IsOrdinal
	echo dev-perl/Lingua-EN-Number-IsOrdinal
	# Lingua::EN::Tagger
	echo dev-perl/Lingua-EN-Tagger
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::NoWarnings
	echo dev-perl/Test-NoWarnings
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
