# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=RKITOVER
MODULE_VERSION=0.55
inherit perl-module

DESCRIPTION="DBIx::Class::Schema Model Class"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"
comment() { true;}
IUSE="catalyst_helper caching replication test"
RDEPEND="
	$(comment DBIX::Class 0.08114)
	>=dev-perl/DBIx-Class-0.08114
	$(comment Catalyst::Runtime 5.80005)
	>=dev-perl/Catalyst-Runtime-5.800.50
	$(comment CatalystX::Component::Traits 0.14)
	>=dev-perl/CatalystX-Component-Traits-0.140.0
	$(comment Moose 1.12)
	>=dev-perl/Moose-1.12
	$(comment MooseX::Types)
	dev-perl/MooseX-Types
	$(comment namespace::autoclean 0.09)
	>=dev-perl/namespace-autoclean-0.90.0
	$(comment Carp::Clan)
	dev-perl/Carp-Clan
	$(comment List::MoreUtils)
	dev-perl/List-MoreUtils
	$(comment Tie::IxHash)
	dev-perl/Tie-IxHash
	$(comment Try::Tiny)
	dev-perl/Try-Tiny

	catalyst_helper? (
		$(comment Catalyst::Devel 1.0)
		>=dev-perl/Catalyst-Devel-1.0.0
		$(comment DBIx::Class::Schema::Loader 0.04005)
		>=dev-perl/DBIx-Class-Schema-Loader-0.40.50
		$(comment MooseX::NonMoose 0.16)
		>=dev-perl/MooseX-NonMoose-0.160.0
	)
	caching? (
		$(comment DBIx::Class::Cursor::Cached)
		dev-perl/DBIx-Class-Cursor-Cached
	)
	replication? (
		$(comment namespace::clean)
		dev-perl/namespace-clean
		$(comment Hash::Merge)
		dev-perl/Hash-Merge
	)
"
DEPEND="${RDEPEND}
	test? (
		$(comment Test::More 0.94)
		>=virtual/perl-Test-Simple-0.94
		$(comment Test::Exception)
		dev-perl/Test-Exception
		$(comment Storable)
		virtual/perl-Storable
		$(comment Test::Requires)
		dev-perl/Test-Requires
		$(comment DBD::SQLite)
		dev-perl/DBD-SQLite
	)
"
SRC_TEST=do
