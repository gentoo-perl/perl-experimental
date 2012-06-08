# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.01025801
inherit perl-module

DESCRIPTION="Nasty tools for probing Dist::Zilla's internal state."
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=virtual/perl-Module-Build-0.36.01
}
perl_meta_build() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=virtual/perl-Module-Build-0.36.01
}
perl_meta_runtime() {
	# Carp
	# echo dev-perl/Carp
	# Dist::Zilla::Prereqs
	echo dev-perl/Dist-Zilla
	# Hash::Merge::Simple
	echo dev-perl/Hash-Merge-Simple
	# Moose
	echo dev-perl/Moose
	# Moose::Autobox
	echo dev-perl/Moose-Autobox
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Sub::Exporter
	echo dev-perl/Sub-Exporter
	# Try::Tiny
	echo dev-perl/Try-Tiny
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Dist::Zilla::Util::Test::KENTNL 0.01000510 ( 0.10.5.100 )
	echo \>=dev-perl/Dist-Zilla-Util-Test-KENTNL-0.10.5.100
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# Test::Fatal 0.003 ( 0.3.0 )
	echo \>=dev-perl/Test-Fatal-0.3.0
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
