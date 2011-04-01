# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=ARCANEZ
MODULE_VERSION=1.001001
inherit perl-module perl-declaredeps

DESCRIPTION="cursor class with built-in caching support"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

depend DBIx-Class 0.81.240
depend Digest-SHA1
depend Carp-Clan 6.0

bdepend DBD-SQLite 1.25
bdepend-virtual Test-Simple # Test::More
bdepend Cache-Cache # Cache::FileCache

ddep_setup

SRC_TEST="do"
