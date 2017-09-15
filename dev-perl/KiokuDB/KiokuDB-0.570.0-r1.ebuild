# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=DOY
MODULE_VERSION=0.57
inherit perl-module

DESCRIPTION="Object Graph storage engine"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# B -> perl
# B::Deparse -> perl
# Data::Stream::Bulk::Util -> Data-Stream-Bulk
# Data::Stream::Bulk::Callback -> Data-Stream-Bulk
# IO::Handle -> IO
# List::Util -> Scalar-List-Utils
# Module::Pluggable::Object -> Module-Pluggable
# Moose::Exporter -> Moose
# Moose::Role -> Moose
# Moose::Util -> Moose
# Moose::Util::MetaRole -> Moose
# Moose::Util::TypeConstraints -> Moose
# MooseX::Clone::Meta::Attribute::Trait::NoClone -> MooseX-Clone
# POSIX -> perl
# Scalar::Util -> Scalar-List-Utils
# Test::More -> Test-Simple
# Test::Moose -> Moose
# Symbol -> perl
# YAML::XS -> YAML-LibYAML
# IPC::Open3 -> Perl
# Search::GIN::Driver -> Search-GIN
# Search::GIN::Driver::Hash -> Search-GIN
# Search::GIN::Extract -> Search-GIN
# Search::GIN::Extract::Class -> Search-GIN
# Search::GIN::Extract::Delegate -> Search-GIN
# Search::GIN::Query::Class -> Search-GIN
# Cache::Ref::CART -> Cache-Ref
# Cache::Ref::CLOCK -> Cache-Ref
RDEPEND="
	>=dev-perl/Cache-Ref-0.20.0
	virtual/perl-Carp
	dev-perl/Class-Load
	>=dev-perl/Data-Stream-Bulk-0.80.0
	dev-perl/Data-Swap
	>=dev-perl/Data-UUID-1.203.0
	>=dev-perl/Data-Visitor-0.240.0
	virtual/perl-Digest-SHA
	virtual/perl-Encode
	dev-perl/Hash-Util-FieldHash-Compat
	virtual/perl-IO
	>=dev-perl/JSON-2.120.0
	>=dev-perl/JSON-XS-2.231.0
	dev-perl/Module-Pluggable
	>=dev-perl/Moose-2.0.0
	>=dev-perl/MooseX-Clone-0.40.0
	>=dev-perl/MooseX-Role-Parameterized-0.100.0
	>=dev-perl/MooseX-YAML-0.40.0
	>=dev-perl/PadWalker-1.900.0
	dev-perl/Path-Class
	virtual/perl-Scalar-List-Utils
	dev-perl/Scope-Guard
	>=dev-perl/Search-GIN-0.30.0
	>=dev-perl/Set-Object-1.260.0
	virtual/perl-Storable
	dev-perl/Sub-Exporter
	dev-perl/Test-Exception
	>=virtual/perl-Test-Simple-0.880.0
	dev-perl/Throwable
	virtual/perl-Tie-RefHash
	dev-perl/Tie-ToObject
	dev-perl/Try-Tiny
	>=dev-perl/YAML-LibYAML-0.300.0
	virtual/perl-constant
	>=dev-perl/namespace-clean-0.80.0
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		dev-perl/Cache-Ref
		virtual/perl-Data-Dumper
		virtual/perl-File-Spec
		virtual/perl-if
	)
"
