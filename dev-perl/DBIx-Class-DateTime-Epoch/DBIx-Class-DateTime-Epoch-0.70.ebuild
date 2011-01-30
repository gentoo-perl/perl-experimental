# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=BRICAS
MODULE_VERSION="0.07"
inherit perl-module perl-declaredeps

DESCRIPTION="Automatic inflation/deflation of epoch-based DateTime objects for DBIx::Class"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

test-depend-virtual Test-Simple # Test::More
test-depend DBICx-TestDatabase

depend DBIx-Class 0.08103 # Old Scheme
depend DBIx-Class-TimeStamp 0.07 # Old Scheme
depend DateTime

ddep_setup

SRC_TEST="do"
