# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=NKH
MODULE_VERSION=0.40
inherit perl-module

DESCRIPTION="Improved replacement for Data::Dumper. Powerful filtering capability"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
DEPEND="
	>=virtual/perl-Text-Tabs+Wrap-2001.92.900
	>=dev-perl/Devel-Size-0.58 $(comment 0.580.0)
	dev-perl/Class-ISA
	dev-perl/Sort-Naturally
	dev-perl/Check-ISA
	>=dev-perl/Term-Size-0.200.0
"
RDEPEND="${DEPEND}"
