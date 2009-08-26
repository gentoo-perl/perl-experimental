# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=RKITOVER
inherit perl-module

DESCRIPTION="DBIx::Class::Schema Model Class"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="catalyst_helper caching replication"
DEPEND="
	>=dev-perl/DBIx-Class-0.08107
	>=dev-perl/Catalyst-Runtime-5.80005
	>=dev-perl/CatalystX-Component-Traits-0.09
	dev-perl/Moose
	dev-perl/Moose-Autobox
	dev-perl/MooseX-Types
	dev-perl/namespace-autoclean
	dev-perl/Carp-Clan
	dev-perl/List-MoreUtils
	dev-perl/Tie-IxHash
	>=dev-perl/Class-Accessor-Grouped-0.09000
	catalyst_helper? (
		>=dev-perl/Catalyst-Devel-1.0
		>=dev-perl/DBIx-Class-Schema-Loader-0.04005
	)
	caching? (
		dev-perl/DBIx-Class-Cursor-Cached
	)
	replication? (
		dev-perl/MooseX-AttributeHelpers
		dev-perl/Hash-Merge
	)
"
RDEPEND="${DEPEND}"
SRC_TEST=do
