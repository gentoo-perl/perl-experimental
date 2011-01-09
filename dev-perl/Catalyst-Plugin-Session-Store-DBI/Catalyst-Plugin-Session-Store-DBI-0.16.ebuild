# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="Store your sessions in a database"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
SRC_TEST="do"

IUSE="test"
RDEPEND=">=dev-perl/Catalyst-Runtime-5.490
	>=dev-perl/Catalyst-Plugin-Session-0.27
	dev-perl/DBI
	virtual/perl-MIME-Base64
	virtual/perl-Storable
	dev-perl/MRO-Compat"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
