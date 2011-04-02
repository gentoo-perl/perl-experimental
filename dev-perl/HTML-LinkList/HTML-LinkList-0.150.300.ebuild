# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=RUBYKAT
MODULE_VERSION="0.1503"
inherit perl-module

DESCRIPTION="Create a 'smart' list of HTML links."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND=""
DEPEND="${RDEPEND}
	virtual/perl-Module-Build
	virtual/perl-Test-Simple
"
SRC_TEST="do"
