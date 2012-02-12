# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION="0.05"
inherit perl-module

DESCRIPTION="Per user sessions (instead of per browser sessions)."
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
COMMON_DEPEND="
	dev-perl/Moose
	dev-perl/namespace-autoclean
	dev-perl/MRO-Compat
	>=dev-perl/Catalyst-Plugin-Session-0.60.0
	dev-perl/Catalyst-Plugin-Authentication
	dev-perl/Hash-Merge
	dev-perl/Object-Signature
"
RDEPEND="${COMMON_DEPEND}"
DEPEND="${COMMON_RDEPEND}"
SRC_TEST=do
