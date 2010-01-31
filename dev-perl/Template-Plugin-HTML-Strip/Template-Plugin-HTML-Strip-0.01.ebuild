# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=GSIMMONS
inherit perl-module

DESCRIPTION="HTML::Strip filter for Template Toolkit"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
COMMON_DEPEND="
	>=dev-perl/HTML-Strip-1.04
	>=dev-perl/TemplateToolkit-2.14
	>=dev-perl/Template-Test-2.70
"
