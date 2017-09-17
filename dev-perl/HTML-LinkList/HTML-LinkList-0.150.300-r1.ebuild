# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=RUBYKAT
MODULE_VERSION="0.1503"
inherit perl-module

DESCRIPTION="Create a 'smart' list of HTML links."

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND=""
DEPEND="${RDEPEND}
	dev-perl/Module-Build
	virtual/perl-Test-Simple
"
