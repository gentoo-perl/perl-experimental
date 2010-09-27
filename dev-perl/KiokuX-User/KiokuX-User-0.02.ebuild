# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=FLORA
inherit perl-module

DESCRIPTION="A generic role for user objects stored in KiokuDB"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
COMMON_DEPEND="
	>=dev-perl/KiokuDB-0.09
	>=dev-perl/Moose-0.63
	dev-perl/MooseX-Role-Parameterized
	dev-perl/MooseX-Types-Authen-Passphrase
	dev-perl/Sub-Exporter
	dev-perl/Test-use-ok
	dev-perl/namespace-clean
"
DEPEND="
	${COMMON_DEPEND}
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
