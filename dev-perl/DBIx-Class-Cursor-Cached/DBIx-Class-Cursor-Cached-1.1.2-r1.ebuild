# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=ARCANEZ
MODULE_VERSION=1.001002
inherit perl-module

DESCRIPTION="cursor class with built-in caching support"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Carp-Clan-6.0.0
	>=dev-perl/DBIx-Class-0.81.240
	virtual/perl-Digest-SHA
"
# Cache::FileCache -> Cache-Cache
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
	test? (
		>=dev-perl/DBD-SQLite-1.250.0
		virtual/perl-Test-Simple
		dev-perl/Cache-Cache
	)
"
