# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=FAYLAND
inherit perl-module

DESCRIPTION="Padre and XML"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="virtual/perl-Module-Build"
RDEPEND="app-editors/padre
	dev-perl/XML-Tidy
	>=dev-perl/XML-LibXML-1.67"
