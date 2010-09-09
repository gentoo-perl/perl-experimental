# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=RIBASUSHI
inherit perl-module

DESCRIPTION="DBIx::Class extension to update and create date and time based fields"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

PATCHES=(
		"${FILESDIR}/buggy_inc_mi.patch"
);
COMMON_DEPEND="
	>=dev-perl/DateTime-0.55
	>=dev-perl/DBIx-Class-0.08009
	>=dev-perl/DBIx-Class-DynamicDefault-0.03
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		dev-perl/DateTime-Format-SQLite
		virtual/perl-Time-HiRes
		dev-perl/Time-Warp
		dev-perl/DateTime-Format-MySQL
		dev-perl/Class-Accessor-Grouped
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
