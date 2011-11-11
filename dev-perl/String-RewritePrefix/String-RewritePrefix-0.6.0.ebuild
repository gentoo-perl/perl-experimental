# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=RJBS
MODULE_VERSION="0.006"
inherit perl-module

DESCRIPTION="Rewrite strings based on a set of known prefixes"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=virtual/perl-Test-Simple-0.47
	dev-perl/Sub-Exporter
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.31
"
SRC_TEST=do
