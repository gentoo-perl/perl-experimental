# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=ILMARI
inherit perl-module

DESCRIPTION="Dynamic definition of DBIx::Class sub classes."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="sqlite mysql postgres"

DEPEND="
	>=dev-perl/Data-Dump-1.06
	>=dev-perl/UNIVERSAL-require-0.11
	>=dev-perl/Lingua-EN-Inflect-Number-1.1
	>=dev-perl/Class-Accessor-0.30
	>=dev-perl/Class-Data-Accessor-0.03
	>=dev-perl/Class-C3-0.18
	>=dev-perl/DBIx-Class-0.07006
	dev-perl/Class-Inspector
	>=dev-perl/DBI-1.56
	sqlite? ( >=dev-perl/DBD-SQLite-1.12 )
	mysql? ( >=dev-perl/DBD-mysql-4.00.4 )
	postgres? ( >=dev-perl/DBD-Pg-1.49 )
"
RDEPEND="${DEPEND}"

# These have to be packaged if someone wants them::
# db2? ( >=dev-perl/DBD-DB2-1.0 )
# oracle? ( >=dev-perl/DBD-Oracle-0.19 )

SRC_TEST=do

src_prepare() {
	sed -i "/^auto_install;/d" "${S}"/Makefile.PL || die
	perl-module_src_prepare
}
