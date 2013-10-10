# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.047
inherit perl-module

DESCRIPTION='globally unique identifiers'
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
	# Data::UUID 1.148 ( 1.148.0 )
	echo \>=dev-perl/Data-UUID-1.148.0
	# Sub::Exporter 0.90 ( 0.900.0 )
	echo \>=dev-perl/Sub-Exporter-0.900.0
	# Sub::Install 0.03 ( 0.30.0 )
	echo \>=dev-perl/Sub-Install-0.30.0
	# bytes
	# echo dev-lang/perl
	# overload
	# echo dev-lang/perl
	# strict
	# echo dev-lang/perl
	# warnings
	# echo dev-lang/perl
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
