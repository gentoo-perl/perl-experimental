# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=JROCKWAY
inherit perl-module

DESCRIPTION="create a temporary database from a DBIx::Class::Schema"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	virtual/perl-File-Temp
	dev-perl/DBD-SQLite
	dev-perl/SQL-Translator
"
DEPEND="
	${COMMON_DEPEND}
	dev-perl/DBIx-Class
	test? (
		virtual/perl-Test-Simple
		dev-perl/Test-use-ok
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
