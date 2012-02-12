# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=LBR
MODULE_VERSION="0.01"
inherit perl-module

DESCRIPTION="Store sessions using a Catalyst::Plugin::Cache"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

DEPEND="
	>=dev-perl/Catalyst-Plugin-Session-0.60.0
"
