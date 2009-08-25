# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=BOBTFISH
inherit perl-module

DESCRIPTION="Per user sessions (instead of per browser sessions)."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
RDEPEND="
	>=dev-perl/Catalyst-Plugin-Session-0.06
	dev-perl/Catalyst-Plugin-Authentication
	dev-perl/Hash-Merge
	dev-perl/Object-Signature
"
DEPEND="${RDEPEND}"
SRC_TEST=do
