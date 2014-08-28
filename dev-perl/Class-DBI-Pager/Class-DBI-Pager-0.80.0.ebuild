# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=0.08
inherit perl-module

DESCRIPTION="Pager utility for Class::DBI"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=virtual/perl-Test-Simple-0.320.0
	>=dev-perl/Class-DBI-0.900.0
	>=dev-perl/Data-Page-0.130.0
	>=dev-perl/Exporter-Lite-0.10.0
"
DEPEND="$RDEPEND"

SRC_TEST=do
