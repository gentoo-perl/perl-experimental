# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=BOBTFISH
inherit perl-module

DESCRIPTION="Authentication from an LDAP Directory."

IUSE="test"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-perl/perl-ldap
	>=dev-perl/Catalyst-Plugin-Authentication-0.10003
"
DEPEND="
	test? (
		>=dev-perl/Net-LDAP-Server-Test-0.07
		virtual/perl-Test-Simple
		dev-perl/Test-MockObject
		dev-perl/Test-Exception
	)
	${RDEPEND}
"
SRC_TEST="do"
