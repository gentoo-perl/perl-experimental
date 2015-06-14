# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.1.4
inherit perl-module

DESCRIPTION='A reader/writer for the metadata/perl/distmap.json file.'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.4003 ( 0.400.300 )
	echo \>=dev-perl/Module-Build-0.400.300
}
perl_meta_build() {
	# Module::Build 0.4003 ( 0.400.300 )
	echo \>=dev-perl/Module-Build-0.400.300
}
perl_meta_runtime() {
	# Carp
	echo dev-lang/perl
	# Data::Dump
	echo dev-perl/Data-Dump
	# Digest::SHA
	echo virtual/perl-Digest-SHA
	# JSON
	echo dev-perl/JSON
	# Moo
	echo dev-perl/Moo
	# Moo::Role
	echo dev-perl/Moo
	# MooseX::Has::Sugar
	echo dev-perl/MooseX-Has-Sugar
	# Path::Tiny
	echo dev-perl/Path-Tiny
	# Sub::Quote
	echo dev-perl/Moo
	# perl v5.10.0 ( 5.10.0 )
	echo \>=dev-lang/perl-5.10.0
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
	# FindBin
	echo dev-lang/perl
	# Test::More 0.98 ( 0.980.0 )
	echo \>=virtual/perl-Test-Simple-0.980.0
	# perl v5.10.0 ( 5.10.0 )
	echo \>=dev-lang/perl-5.10.0
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
