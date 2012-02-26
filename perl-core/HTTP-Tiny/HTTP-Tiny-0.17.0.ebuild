# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=0.017
inherit perl-module

DESCRIPTION='A small, simple, correct HTTP/1.1 client'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Carp
	# echo dev-perl/Carp
	# IO::Socket
	echo virtual/perl-IO
	# Time::Local
	echo virtual/perl-Time-Local
	# bytes
	echo dev-lang/perl
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Data::Dumper
	echo virtual/perl-Data-Dumper
	# Exporter
	echo virtual/perl-Exporter
	# File::Basename
	echo dev-lang/perl
	# File::Find
	echo dev-lang/perl
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Temp
	echo virtual/perl-File-Temp
	# IO::Dir
	echo virtual/perl-IO
	# IO::File
	echo virtual/perl-IO
	# IO::Socket::INET
	echo virtual/perl-IO
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
	# open
	echo dev-lang/perl
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
