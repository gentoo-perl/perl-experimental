# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.10
inherit perl-module

DESCRIPTION='Required attributes which fail only when trying to use them'
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
	echo dev-lang/perl
	# Moose 0.94 ( 0.940.0 )
	echo \>=dev-perl/Moose-0.940.0
	# Moose::Exporter
	echo dev-perl/Moose
	# Moose::Role
	echo dev-perl/Moose
	# aliased 0.30 ( 0.300.0 )
	echo \>=dev-perl/aliased-0.300.0
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
}
perl_meta_test() {
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# Test::CheckDeps 0.002 ( 0.2.0 )
	echo \>=dev-perl/Test-CheckDeps-0.2.0
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
	# strict
	echo dev-lang/perl
	# warnings
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
