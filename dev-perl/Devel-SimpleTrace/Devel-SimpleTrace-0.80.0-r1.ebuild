# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=SAPER
MODULE_VERSION=0.08
inherit perl-module

DESCRIPTION="See where you code warns and dies using stack traces"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	dev-perl/Module-Build
"
RDEPEND=""
