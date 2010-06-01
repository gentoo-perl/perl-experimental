# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=JSHIRLEY
inherit perl-module

DESCRIPTION="DBIx::Class extension to update and create date and time based fields"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

PATCHES=(
		"${FILESDIR}/buggy_inc_mi.patch"
);
COMMON_DEPEND="
	dev-perl/DateTime
	dev-perl/DBIx-Class
	dev-perl/DBIx-Class-DynamicDefault
"
DEPEND="
	${COMMON_DEPEND}
	dev-perl/DateTime-Format-MySQL
	dev-perl/Class-Accessor-Grouped
	dev-perl/DateTime-Format-SQLite
	virtual/perl-Time-HiRes
	dev-perl/Time-Warp
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
