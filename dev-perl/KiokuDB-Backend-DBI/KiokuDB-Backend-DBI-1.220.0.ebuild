# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=DOY
MODULE_VERSION=1.22
inherit perl-module

DESCRIPTION='DBI backend for KiokuDB'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

dbix_class_optional_deps() {
	echo \>=dev-perl/SQL-Translator-0.110.60
}

perl_meta_configure() {
	# DBIx::Class::Optional::Dependencies
	echo dev-perl/DBIx-Class
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	dbix_class_optional_deps
	# Carp
	# echo virtual/perl-Carp
	# Class::Accessor::Grouped
	echo dev-perl/Class-Accessor-Grouped
	# DBI 1.607 ( 1.607.0 )
	echo \>=dev-perl/DBI-1.607
	# DBIx::Class 0.08127 ( 0.81.270 )
	echo \>=dev-perl/DBIx-Class-0.81.270
	# DBIx::Class::Core
	echo dev-perl/DBIx-Class
	# DBIx::Class::ResultSource::Table
	echo dev-perl/DBIx-Class
	# DBIx::Class::Schema
	echo dev-perl/DBIx-Class
	# Data::Stream::Bulk 0.07 ( 0.70.0 )
	echo \>=dev-perl/Data-Stream-Bulk-0.70.0
	# Data::Stream::Bulk::DBI
	echo dev-perl/Data-Stream-Bulk
	# JSON
	echo dev-perl/JSON
	# KiokuDB 0.46 ( 0.460.0 )
	echo \>=dev-perl/KiokuDB-0.460.0
	# KiokuDB::Backend
	echo dev-perl/KiokuDB
	# KiokuDB::Backend::Role::Clear
	echo dev-perl/KiokuDB
	# KiokuDB::Backend::Role::Concurrency::POSIX
	echo dev-perl/KiokuDB
	# KiokuDB::Backend::Role::GC
	echo dev-perl/KiokuDB
	# KiokuDB::Backend::Role::Query::GIN
	echo dev-perl/KiokuDB
	# KiokuDB::Backend::Role::Query::Simple
	echo dev-perl/KiokuDB
	# KiokuDB::Backend::Role::Scan
	echo dev-perl/KiokuDB
	# KiokuDB::Backend::Role::TXN
	echo dev-perl/KiokuDB
	# KiokuDB::Backend::Serialize::Delegate
	echo dev-perl/KiokuDB
	# KiokuDB::TypeMap
	echo dev-perl/KiokuDB
	# KiokuDB::TypeMap::Entry
	echo dev-perl/KiokuDB
	# KiokuDB::TypeMap::Entry::Naive
	echo dev-perl/KiokuDB
	# List::MoreUtils
	echo dev-perl/List-MoreUtils
	# Moose
	echo dev-perl/Moose
	# Moose::Util::TypeConstraints
	echo dev-perl/Moose
	# MooseX::Types 0.08 ( 0.80.0 )
	echo \>=dev-perl/MooseX-Types-0.80.0
	# MooseX::Types::Moose
	echo dev-perl/MooseX-Types
	# SQL::Abstract
	echo dev-perl/SQL-Abstract
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Search::GIN 0.07 ( 0.70.0 )
	echo \>=dev-perl/Search-GIN-0.70.0
	# Search::GIN::Extract::Delegate
	echo dev-perl/Search-GIN
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
	# Test::TempDir
	echo dev-perl/Test-TempDir
	# Test::use::ok
	echo dev-perl/Test-use-ok
	# Try::Tiny
	echo dev-perl/Try-Tiny
	# base
	# echo virtual/perl-base
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
	# namespace::clean
	echo dev-perl/namespace-clean
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# DBD::SQLite
	echo dev-perl/DBD-SQLite
	# DBI
	echo dev-perl/DBI
	# KiokuDB::Test
	echo dev-perl/KiokuDB
	# Search::GIN::Extract::Callback
	echo dev-perl/Search-GIN
	# Search::GIN::Extract::Class
	echo dev-perl/Search-GIN
	# Search::GIN::Query::Manual
	echo dev-perl/Search-GIN
	# Search::GIN::Query::Set
	echo dev-perl/Search-GIN
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::TempDir
	echo dev-perl/Test-TempDir
	# YAML::XS
	echo dev-perl/YAML-LibYAML
	# constant
	# echo virtual/perl-constant
	# ok
	echo dev-perl/Test-use-ok
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
