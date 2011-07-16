# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=CHROMATIC
MODULE_VERSION=0.17
inherit perl-module

DESCRIPTION="A framework for parsing PseudoPod"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
RDEPEND="
	>=virtual/perl-Pod-Simple-3.02 $(comment 3.20.0)
	>=virtual/perl-Text-Tabs+Wrap-98.112.902 $(comment Text::Wrap)
	dev-perl/HTML-Parser $(comment HTML::Entities)
"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build
	virtual/perl-Test-Simple $(comment Test::More)
"
SRC_TEST=do
