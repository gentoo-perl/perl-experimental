# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=MRAMBERG
MODULE_VERSION="0.10"
inherit perl-module

DESCRIPTION="Display a stack trace on the debug screen"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	>=dev-perl/Catalyst-Runtime-5.700.0
	dev-perl/Devel-StackTrace
	>=dev-perl/MRO-Compat-0.10
"
