# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=WONKO
MODULE_VERSION="1.02"
inherit perl-module

DESCRIPTION="Easy manipulation of JSON headers"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	>=dev-perl/CGI-Application-4.00
	>=dev-perl/JSON-Any-1.14
"
DEPEND="${RDEPEND}
	>=dev-perl/JSON-2.02
	virtual/perl-Module-Build
	test? (
			virtual/perl-Test-Simple
	)
"
SRC_TEST="do"
