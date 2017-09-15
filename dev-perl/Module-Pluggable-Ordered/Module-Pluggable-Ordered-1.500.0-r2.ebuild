# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=APEIRON
MODULE_VERSION=1.5
inherit perl-module

DESCRIPTION="Call module plugins in a specified order"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/Module-Pluggable-1.900.0
	dev-perl/UNIVERSAL-require
"
DEPEND="$RDEPEND
	virtual/perl-ExtUtils-MakeMaker
"
