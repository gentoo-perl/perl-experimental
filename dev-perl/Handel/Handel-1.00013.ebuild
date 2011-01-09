# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=CLACO
inherit perl-module

DESCRIPTION="Simple commerce framework with AxKit/TT/Catalyst support."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="catalystframework"

DEPEND="
	>=dev-perl/DBIx-Class-0.08123
	>=dev-perl/DBIx-Class-UUIDColumns-0.02005
	>=dev-perl/DBIx-Class-Validation-0.02005
	>=dev-perl/Data-Currency-0.04002
	>=dev-perl/Class-Accessor-Grouped-0.09003
	>=dev-perl/Class-Inspector-1.24
	>=dev-perl/Clone-0.31
	>=dev-perl/Error-0.17.016
	>=virtual/perl-Module-Pluggable-3.9
	>=dev-perl/Module-Starter-1.54
	>=dev-perl/DateTime-0.61
	>=dev-perl/DateTime-Format-MySQL-0.04
	>=dev-perl/Locale-Codes-2.07
	>=dev-perl/Locale-Currency-Format-1.28
	>=dev-perl/FormValidator-Simple-0.28
	>=dev-perl/Finance-Currency-Convert-WebserviceX-0.07001
	>=dev-perl/SQL-Translator-0.11006
	>=dev-perl/DBD-SQLite-1.29
	>=dev-perl/Data-Currency-0.04002
	catalystframework? (
		>=dev-perl/Catalyst-Runtime-5.800.250
		>=dev-perl/Catalyst-Devel-1.28
		>=dev-perl/Catalyst-View-TT-0.34
		>=dev-perl/Catalyst-Plugin-Session-0.3
		>=dev-perl/Catalyst-Plugin-Session-Store-File-0.18
		>=dev-perl/Catalyst-Plugin-Session-State-Cookie-0.17
		>=dev-perl/yaml-0.71
		>=dev-perl/HTML-FillInForm-2.00
	)
"
