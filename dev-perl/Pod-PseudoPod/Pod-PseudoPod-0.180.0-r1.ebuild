# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=CHROMATIC
MODULE_VERSION=0.18
inherit perl-module

DESCRIPTION="A framework for parsing PseudoPod"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { true;}
RDEPEND="
	$(comment Pod::Simple 3.02)
	>=virtual/perl-Pod-Simple-3.02 $(comment 3.20.0)

	$(comment Text::Wrap 98.112902)
	>=virtual/perl-Text-Tabs+Wrap-98.112.902

	$(comment HTML::Entities)
	dev-perl/HTML-Parser
"
DEPEND="${RDEPEND}
	$(comment configure)
	$(comment Module::Build)
	dev-perl/Module-Build

	$(comment build)
	$(comment Test::More)
	virtual/perl-Test-Simple
"
