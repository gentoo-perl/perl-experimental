# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=MARKF
MODULE_VERSION=2.02
inherit perl-module

DESCRIPTION="Textile plugin for the Template Toolkit"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/Template-Toolkit-2.0.0
	>=dev-perl/Text-Textile-2.120.0
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.420.0
"
