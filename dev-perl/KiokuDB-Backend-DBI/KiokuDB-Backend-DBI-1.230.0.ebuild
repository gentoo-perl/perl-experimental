# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=DOY
MODULE_VERSION=1.23
inherit perl-module

DESCRIPTION="DBI backend for KiokuDB"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# perl -MData::Dump=pp -MDBIx::Class::Optional::Dependencies \
# -E' say pp( DBIx::Class::Optional::Dependencies->req_list_for(q[deploy])) '
DBIX_CLASS_OPTIONAL_DEPS="
	>=dev-perl/SQL-Translator-0.110.60
"
# DBIx::Class::Core ->
# DBIx::Class::ResultSource::Table ->
# DBIx::Class::Schema -> DBIx-Class
# Data::Stream::Bulk::DBI -> Data-Stream-Bulk
# KiokuDB::Backend -> 
# KiokuDB::Backend::Role::Clear
# KiokuDB::Backend::Role::Concurrency::POSIX
# KiokuDB::Backend::Role::GC
# KiokuDB::Backend::Role::Query::GIN
# KiokuDB::Backend::Role::Query::Simple
# KiokuDB::Backend::Role::Scan
# KiokuDB::Backend::Role::TXN
# KiokuDB::Backend::Serialize::Delegate
# KiokuDB::TypeMap
# KiokuDB::TypeMap::Entry
# KiokuDB::TypeMap::Entry::Naive -> KiokuDB
# Moose::Util::TypeConstraints -> Moose
# MooseX::Types::Moose -> MooseX-Types
# Scalar::Util -> Scalar-List-Utils
# Search::GIN::Extract::Delegate -> Search-GIN
# base -> perl
RDEPEND="
	${DBIX_CLASS_OPTIONAL_DEPS}
	virtual/perl-Carp
	dev-perl/Class-Accessor-Grouped
	dev-perl/Class-Load
	>=dev-perl/DBI-1.607.0
	>=dev-perl/DBIx-Class-0.81.270
	>=dev-perl/Data-Stream-Bulk-0.70.0
	dev-perl/JSON
	>=dev-perl/KiokuDB-0.460.0
	dev-perl/List-MoreUtils
	dev-perl/Moose
	>=dev-perl/MooseX-Types-0.80.0
	dev-perl/SQL-Abstract
	virtual/perl-Scalar-List-Utils
	>=dev-perl/Search-GIN-0.70.0
	dev-perl/Try-Tiny
	dev-perl/namespace-autoclean
	dev-perl/namespace-clean
"
# DBIx::Class::Optional::Dependencies -> DBIx-Class
# KiokuDB::Entry ->
# KiokuDB::Test  -> KiokuDB
# Search::GIN::Extract::Callback
# Search::GIN::Extract::Class
# Search::GIN::Query::Manual
# Search::GIN::Query::Set -> Search-GIN
# YAML::XS -> YAML-LibYAML
DEPEND="
	${RDEPEND}
	dev-perl/DBIx-Class
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		virtual/perl-File-Spec
		virtual/perl-IO
		dev-perl/Test-Exception
		>=virtual/perl-Test-Simple-0.880.0
		dev-perl/Test-Requires
		dev-perl/Test-TempDir
		dev-perl/YAML-LibYAML
		virtual/perl-constant
	)
"
