# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=JJNAPIORK
MODULE_VERSION="0.11"
inherit perl-module

DESCRIPTION="DBIx::Class extension to update and create date and time based fields"
LICENSE="|| ( Artistic GPL-2 )"
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
