# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=RKITOVER
inherit perl-module

DESCRIPTION="DBIx::Class::Schema Model Class"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="catalyst_helper caching replication test"
RDEPEND="
	>=dev-perl/DBIx-Class-0.08114
	>=dev-perl/Catalyst-Runtime-5.800.050
	>=dev-perl/CatalystX-Component-Traits-0.14
	>=dev-perl/Moose-1.12
	dev-perl/MooseX-Types
	>=dev-perl/namespace-autoclean-0.09
	dev-perl/Carp-Clan
	dev-perl/List-MoreUtils
	dev-perl/Tie-IxHash
	dev-perl/Try-Tiny
	catalyst_helper? (
		>=dev-perl/Catalyst-Devel-1.0
		>=dev-perl/DBIx-Class-Schema-Loader-0.04005
		>=dev-perl/MooseX-NonMoose-0.15
	)
	caching? (
		dev-perl/DBIx-Class-Cursor-Cached
	)
	replication? (
		dev-perl/MooseX-AttributeHelpers
		dev-perl/Hash-Merge
	)
"
DEPEND="${RDEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.94
		dev-perl/Test-Exception
	)
"
SRC_TEST=do
