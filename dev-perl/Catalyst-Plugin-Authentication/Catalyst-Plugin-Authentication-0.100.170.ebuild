# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.10017
inherit perl-module

DESCRIPTION="Infrastructure plugin for the Catalyst authentication framework"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-perl/Catalyst-Runtime
	dev-perl/Class-Inspector
	>=dev-perl/Catalyst-Plugin-Session-0.100.0
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
