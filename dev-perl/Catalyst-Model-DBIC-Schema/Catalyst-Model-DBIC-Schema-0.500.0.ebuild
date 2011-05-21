# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=RKITOVER
MODULE_VERSION=0.50
inherit perl-module

DESCRIPTION="DBIx::Class::Schema Model Class"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"
comment() { echo ''; }
IUSE="catalyst_helper caching replication test"
RDEPEND="
	>=dev-perl/DBIx-Class-0.08114 $(comment 0.81.140)
	>=dev-perl/Catalyst-Runtime-5.800.50
	>=dev-perl/CatalystX-Component-Traits-0.14 $(comment 0.140.0)
	>=dev-perl/Moose-1.12 $(comment 1.120.0)
	dev-perl/MooseX-Types
	>=dev-perl/namespace-autoclean-0.90.0
	dev-perl/Carp-Clan
	dev-perl/List-MoreUtils
	dev-perl/Tie-IxHash
	dev-perl/Try-Tiny
	catalyst_helper? (
		>=dev-perl/Catalyst-Devel-1.0.0
		>=dev-perl/DBIx-Class-Schema-Loader-0.40.50
		>=dev-perl/MooseX-NonMoose-0.150.0
	)
	caching? (
		dev-perl/DBIx-Class-Cursor-Cached
	)
	replication? (
		dev-perl/namespace-clean
		dev-perl/Hash-Merge
	)
"
DEPEND="${RDEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.94 $(comment 0.940.0)
		dev-perl/Test-Exception
	)
"
SRC_TEST=do
