# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=RIBASUSHI
MODULE_VERSION="0.14"
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
	>=dev-perl/DBIx-Class-0.80.90
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
