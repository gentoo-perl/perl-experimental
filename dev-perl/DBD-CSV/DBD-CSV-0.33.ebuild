# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=HMBRAND
MODULE_A="${P}.tgz"
inherit perl-module

DESCRIPTION="SQL engine and DBI driver for CSV files"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND=">=dev-perl/DBI-1.614
	>=dev-perl/Text-CSV_XS-0.71
	>=dev-perl/SQL-Statement-1.30"
DEPEND="${RDEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.90
		virtual/perl-Encode
	)"
