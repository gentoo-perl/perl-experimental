# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=MARKF
inherit perl-module

DESCRIPTION="Textile plugin for the Template Toolkit"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"
#SRC_TEST="do"

IUSE=""
RDEPEND=">=dev-perl/Template-Toolkit-2.00
	>=dev-perl/Text-Textile-0.05"
DEPEND="virtual/perl-Module-Build
	${RDEPEND}"
