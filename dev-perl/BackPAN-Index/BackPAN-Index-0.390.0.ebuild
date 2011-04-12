# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=MSCHWERN
MODULE_VERSION="0.39"
inherit perl-module

DESCRIPTION="An interface to the BackPAN index"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/App-Cache-0.370.0
	>=dev-perl/CPAN-DistnameInfo-0.90.0
	>=dev-perl/CLASS-1.00
	dev-perl/libwww-perl
	virtual/perl-Archive-Extract
	>=dev-perl/DBIx-Class-0.08109
	>=dev-perl/DBD-SQLite-1.25
	>=dev-perl/DBIx-Class-Schema-Loader-0.50.30
	>=dev-perl/Path-Class-0.17
	dev-perl/autodie
	virtual/perl-parent
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-Test-Simple-0.90
	>=dev-perl/Test-Compile-0.11
	>=virtual/perl-Module-Build-0.36
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
