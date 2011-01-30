# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=RJBS
MODULE_VERSION="0.043"
inherit perl-module

DESCRIPTION="Globally unique identifiers"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	>=dev-perl/Data-UUID-1.148
	>=dev-perl/Sub-Exporter-0.90
	>=dev-perl/Sub-Install-0.03
"
