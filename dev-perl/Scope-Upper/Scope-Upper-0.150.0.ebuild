# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=VPIT
MODULE_VERSION=0.15
inherit perl-module

DESCRIPTION="Act on upper scopes"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { true;}
RDEPEND="
	$(comment Exporter)

	$(comment XSLoader)
	virtual/perl-XSLoader

	$(comment base)
"
DEPEND="${RDEPEND}
	$(comment configure)
		$(comment Config)

		$(comment ExtUtils::MakeMaker)
		virtual/perl-ExtUtils-MakeMaker

	$(comment build)
		$(comment ExtUtils::MakeMaker)
		virtual/perl-ExtUtils-MakeMaker

		$(comment Test::More)
		virtual/perl-Test-Simple
"

SRC_TEST=do
