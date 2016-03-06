# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=MRAMBERG
MODULE_VERSION=0.03
inherit perl-module

DESCRIPTION="Allows you to set up the environment from Catalyst's config file"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.700.0
"
DEPEND="
	${RDEPEND}
	dev-perl/Module-Build
"
