# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.10018
inherit perl-module

DESCRIPTION="Infrastructure plugin for the Catalyst authentication framework"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
RDEPEND="
	dev-perl/Catalyst-Runtime
	dev-perl/Class-Inspector
	dev-perl/MRO-Compat
	>=dev-perl/Catalyst-Plugin-Session-0.10
"
DEPEND="
	${RDEPEND}
	test? (
	>=virtual/perl-Test-Simple-0.88 $(comment Test::More 0.880.0)
			dev-perl/Test-Exception
			$(comment Class::MOP)
			|| ( >=dev-perl/Moose-1.990 dev-perl/Class-MOP )
			dev-perl/Moose
	)
"

SRC_TEST="do"
