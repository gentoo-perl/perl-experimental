# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=NUFFIN
inherit perl-module

DESCRIPTION="Generic session plugin joining server side storage and client side state to maintain session data"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	dev-perl/Catalyst-Runtime
	dev-perl/Object-Signature
"
RDEPEND="${DEPEND}"
