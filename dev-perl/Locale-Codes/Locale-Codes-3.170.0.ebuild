# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=SBECK
MODULE_VERSION=3.17
inherit perl-module

DESCRIPTION="constants for Locale codes"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
RDEPEND="
	>=dev-lang/perl-5.2.0
	$(comment virtual/perl-Carp)
	$(comment virtual/perl-Exporter)
"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build
	virtual/perl-Test-Simple
"

SRC_TEST=do
