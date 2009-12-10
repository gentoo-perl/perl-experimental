# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2

MODULE_AUTHOR=RJBS
inherit perl-module

DESCRIPTION="Rewrite strings based on a set of known prefixes"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=virtual/perl-Test-Simple-0.47
	dev-perl/Sub-Exporter
"
DEPEND="${RDEPEND}"
SRC_TEST=do
