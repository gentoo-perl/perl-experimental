# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=MRAMBERG
MODULE_VERSION="0.17"
inherit perl-module

DESCRIPTION="File storage backend for session data"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-perl/Class-Data-Inheritable-0.04
	>=dev-perl/Catalyst-Runtime-5.700.0
	>=dev-perl/Cache-Cache-1.02
	>=dev-perl/Catalyst-Plugin-Session-0.210.0
	>=dev-perl/MRO-Compat-0.10
"
DEPEND="${RDEPEND}"
