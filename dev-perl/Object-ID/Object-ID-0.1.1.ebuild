# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="4"
MODULE_AUTHOR=MSCHWERN
MODULE_VERSION=v0.1.1
inherit perl-module

DESCRIPTION="A unique identifier for any object"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="object_uuid"
comment() { echo ''; }
COMMON_DEPEND="
	>=dev-lang/perl-5.8.8
	>=dev-perl/Sub-Name-0.03 $(comment 0.30.0)
	>=dev-perl/Hash-FieldHash-0.100.0
	object_uuid? (
		>=dev-perl/Data-UUID-1.148 $(comment 1.148.0)
	)
"
DEPEND="
	${COMMON_DEPEND}
	$(comment BUILD REQUIRES)
	>=virtual/perl-Test-Simple-0.88 $(comment 0.880.0)
	>=virtual/perl-version-0.77 $(comment 0.770.0)

	$(comment CONFIG REQUIRES)
	>=virtual/perl-Module-Build-0.34.0201 $(comment 0.340.201)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
