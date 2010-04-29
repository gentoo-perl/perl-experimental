# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=JROCKWAY
inherit perl-module

DESCRIPTION="Automatically apply roles at object creation time"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	>=dev-perl/Class-MOP-0.84
	>=dev-perl/Moose-0.84
	dev-perl/Sub-Exporter
	dev-perl/namespace-autoclean
"
DEPEND="
	${RDEPEND}
	test? (
	  dev-perl/Test-Exception
	  dev-perl/Test-use-ok
	)
"
SRC_TEST="do"
