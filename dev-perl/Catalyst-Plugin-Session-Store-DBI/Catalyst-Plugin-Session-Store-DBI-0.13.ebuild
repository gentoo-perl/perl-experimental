# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=AGRUNDMA
inherit perl-module

DESCRIPTION="Store your sessions in a database"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
#SRC_TEST="do"

IUSE="test"
RDEPEND=">=dev-perl/Catalyst-Runtime-5.49
	>=dev-perl/Catalyst-Plugin-Session-0.05
	dev-perl/DBI
	virtual/perl-MIME-Base64
	virtual/perl-Storable"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
