# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=FLORA
MODULE_VERSION=0.10016
inherit perl-module

DESCRIPTION="Infrastructure plugin for the Catalyst authentication framework"

IUSE="test"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-perl/Catalyst-Runtime
	dev-perl/Class-Inspector
	>=dev-perl/Catalyst-Plugin-Session-0.10
	dev-perl/MRO-Compat
"
DEPEND="
	${RDEPEND}
	test? (
			|| ( >=dev-perl/Moose-1.990 dev-perl/Class-MOP )
			dev-perl/Moose
			>=virtual/perl-Test-Simple-0.88
			dev-perl/Test-Exception
	)
"
SRC_TEST="do"
