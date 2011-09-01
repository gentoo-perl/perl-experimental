# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=SBECK
MODULE_VERSION=3.18
inherit perl-module

DESCRIPTION="constants for Locale codes"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { true;}
RDEPEND="
	$(comment perl 5.002)
	>=dev-lang/perl-5.2.0

	$(comment Carp)

	$(comment Exporter)
"
DEPEND="${RDEPEND}
	$(comment configure)
	$(comment Module::Build)
	virtual/perl-Module-Build

	$(comment build)
	$(comment Test::More)
	virtual/perl-Test-Simple
"

SRC_TEST=do
