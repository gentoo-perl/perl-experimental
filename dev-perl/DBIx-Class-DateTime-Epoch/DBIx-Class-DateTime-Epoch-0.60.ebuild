# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=BRICAS
MODULE_VERSION="0.06"
inherit perl-module

DESCRIPTION="Automatic inflation/deflation of epoch-based DateTime objects for DBIx::Class"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	dev-perl/DateTime
	>=dev-perl/DBIx-Class-0.08103
	>=dev-perl/DBIx-Class-TimeStamp-0.07
"
DEPEND="
	${RDEPEND}
	test? (
		virtual/perl-Test-Simple
		dev-perl/DBICx-TestDatabase
	)
"
SRC_TEST="do"
