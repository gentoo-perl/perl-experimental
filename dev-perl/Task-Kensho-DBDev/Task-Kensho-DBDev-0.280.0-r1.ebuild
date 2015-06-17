# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=APEIRON
MODULE_VERSION="0.28"
inherit perl-module

DESCRIPTION="A glimpse at an Enlightened Perl (DB Development)"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+perl-dbi +sqlite +dbixclass +schemaloader +sqlt"
COMMON_DEPEND="
	perl-dbi? ( dev-perl/DBI )
	sqlite? ( dev-perl/DBD-SQLite )
	dbixclass? ( dev-perl/DBIx-Class )
	schemaloader? ( dev-perl/DBIx-Class-Schema-Loader )
	sqlt? ( dev-perl/SQL-Translator )
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
