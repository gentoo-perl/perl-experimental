# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=AZAWAWI
inherit perl-module

DESCRIPTION="reformat your text within Padre"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=virtual/perl-Module-Build-0.36.01"
RDEPEND="app-editors/padre
	dev-perl/text-autoformat"
