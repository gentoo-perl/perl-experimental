# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=KURIANJA
MODULE_VERSION=1.04
inherit perl-module

DESCRIPTION="Defend HTML, CSS, scripts and other executable contents against XSS attacks"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="virtual/perl-Exporter
		 virtual/perl-constant
		 virtual/perl-Encode"
DEPEND="$RDEPEND"
