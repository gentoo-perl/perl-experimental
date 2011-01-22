# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=NUFFIN
MODULE_VERSION="0.01"
inherit perl-module

DESCRIPTION="A generic role for user objects stored in KiokuDB"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
COMMON_DEPEND="
	>=dev-perl/Moose-0.63
	dev-perl/namespace-clean
	>=dev-perl/KiokuDB-0.90
	dev-perl/Sub-Exporter
	dev-perl/MooseX-Types-Authen-Passphrase
"
DEPEND="
	${COMMON_DEPEND}
	test? (
		dev-perl/Test-use-ok
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
