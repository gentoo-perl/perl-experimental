# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=RKITOVER
MODULE_VERSION=0.59
inherit perl-module

DESCRIPTION='DBIx::Class::Schema Model Class'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
}
perl_meta_build() {
	# DBD::SQLite
	echo dev-perl/DBD-SQLite
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
	# Storable
	echo virtual/perl-Storable
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::More 0.94 ( 0.940.0 )
	echo \>=virtual/perl-Test-Simple-0.94
	# Test::Requires
	echo dev-perl/Test-Requires
}
perl_meta_runtime() {
	# Carp::Clan
	echo dev-perl/Carp-Clan
	# Catalyst::Component::InstancePerContext
	echo dev-perl/Catalyst-Component-InstancePerContext
	# Catalyst::Devel 1.0 ( 1.0.0 )
	echo \>=dev-perl/Catalyst-Devel-1.0.0
	# Catalyst::Runtime 5.80005 ( 5.800.50 )
	echo \>=dev-perl/Catalyst-Runtime-5.800.50
	# CatalystX::Component::Traits 0.14 ( 0.140.0 )
	echo \>=dev-perl/CatalystX-Component-Traits-0.140.0
	# DBIx::Class 0.08114 ( 0.81.140 )
	echo \>=dev-perl/DBIx-Class-0.81.140
	# DBIx::Class::Cursor::Cached
	echo dev-perl/DBIx-Class-Cursor-Cached
	# DBIx::Class::Schema::Loader 0.04005 ( 0.40.50 )
	echo \>=dev-perl/DBIx-Class-Schema-Loader-0.40.50
	# Hash::Merge
	echo dev-perl/Hash-Merge
	# List::MoreUtils
	echo dev-perl/List-MoreUtils
	# Moose 1.12 ( 1.120.0 )
	echo \>=dev-perl/Moose-1.120
	# MooseX::MarkAsMethods 0.13 ( 0.130.0 )
	echo \>=dev-perl/MooseX-MarkAsMethods-0.130.0
	# MooseX::NonMoose 0.16 ( 0.160.0 )
	echo \>=dev-perl/MooseX-NonMoose-0.160.0
	# MooseX::Types
	echo dev-perl/MooseX-Types
	# Tie::IxHash
	echo dev-perl/Tie-IxHash
	# Try::Tiny
	echo dev-perl/Try-Tiny
	# namespace::autoclean 0.09 ( 0.90.0 )
	echo \>=dev-perl/namespace-autoclean-0.90
	# namespace::clean
	echo dev-perl/namespace-clean
	# perl v5.8.1 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
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
