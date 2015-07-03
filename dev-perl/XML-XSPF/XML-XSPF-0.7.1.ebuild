# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=DANIEL
MODULE_VERSION=0.7.1
inherit perl-module

DESCRIPTION="API for reading & writing XSPF Playlists"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
# Date::Parse 2.20 -> TimeDate 1.10
# HTML::Entities 1.30 -> HTML-Parser 3.46
RDEPEND="
	>=dev-perl/Class-Accessor-0.200.0
	>=dev-perl/TimeDate-1.100.0
	>=dev-perl/HTML-Parser-3.460.0
	>=dev-perl/XML-Parser-2.300.0
	>=dev-perl/XML-Writer-0.600"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
