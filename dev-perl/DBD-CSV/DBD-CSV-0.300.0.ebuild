# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=HMBRAND
MODULE_A_EXT="tgz"
MODULE_VERSION="0.30"
inherit perl-module

DESCRIPTION="SQL engine and DBI driver for CSV files"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND=">=dev-perl/DBI-1.611.0
	>=dev-perl/Text-CSV_XS-0.710.0
	>=dev-perl/SQL-Statement-1.250.0"
DEPEND="${RDEPEND}
	test? (
		virtual/perl-Test-Simple
		virtual/perl-Encode
	)"
