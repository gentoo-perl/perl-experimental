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
comment() { echo ''; }
RDEPEND="
	>=dev-perl/CGI-Application-4.0.0
	>=dev-perl/JSON-Any-1.14 $(comment 1.140.0)
"
DEPEND="${RDEPEND}
	>=dev-perl/JSON-2.02 $(comment 2.20.0)
	virtual/perl-Module-Build
	test? (
			virtual/perl-Test-Simple
	)
"
SRC_TEST="do"
