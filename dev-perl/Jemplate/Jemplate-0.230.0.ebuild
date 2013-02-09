# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=RKRIMEN
MODULE_VERSION="0.23"
inherit perl-module

DESCRIPTION="JavaScript Templating with Template Toolkit"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	>=dev-perl/Template-Toolkit-2.190.0
	>=dev-perl/File-Find-Rule-0.30
"
