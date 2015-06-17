# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=RSRCHBOY
MODULE_VERSION=0.15
inherit perl-module

DESCRIPTION='Mark overload code symbols as methods'
LICENSE=" LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# B::Hooks::EndOfScope
	echo dev-perl/B-Hooks-EndOfScope
	# Moose 0.94 ( 0.940.0 )
	echo \>=dev-perl/Moose-0.940.0
	# Moose::Exporter
	echo dev-perl/Moose
	# Moose::Role
	echo dev-perl/Moose
	# Moose::Util::MetaRole
	echo dev-perl/Moose
	# namespace::autoclean 0.12 ( 0.120.0 )
	echo \>=dev-perl/namespace-autoclean-0.120.0
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
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
	# Test::Moose
	echo dev-perl/Moose
	# Test::More 0.92 ( 0.920.0 )
	echo \>=virtual/perl-Test-Simple-0.92
	# overload
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
