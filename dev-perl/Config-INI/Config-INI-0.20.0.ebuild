# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.020
inherit perl-module

DESCRIPTION='simple .ini-file format'
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
	# echo virtual/perl-Carp
	# IO::File 1.14 ( 1.140.0 )
	echo \>=virtual/perl-IO-1.14
	# IO::String
	echo dev-perl/IO-String
	# Mixin::Linewise::Readers
	echo dev-perl/Mixin-Linewise
	# Mixin::Linewise::Writers
	echo dev-perl/Mixin-Linewise
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# File::Find
	# echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.960.0
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
