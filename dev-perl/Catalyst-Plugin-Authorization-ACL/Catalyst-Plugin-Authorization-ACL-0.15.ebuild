# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
MODULE_AUTHOR=RKITOVER
inherit perl-module

DESCRIPTION="ACL support for Catalyst applications"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.800.130
	dev-perl/Catalyst-Plugin-Authentication
	dev-perl/Catalyst-Plugin-Authorization-Roles
	dev-perl/Moose
	dev-perl/MRO-Compat
	dev-perl/namespace-autoclean
	dev-perl/Class-Data-Inheritable
	dev-perl/Class-Throwable
	dev-perl/Tree-Simple
	dev-perl/Tree-Simple-VisitorFactory
"
DEPEND="${RDEPEND}
	test? (
		virtual/perl-Test-Simple
		dev-perl/Catalyst-Plugin-Session
		dev-perl/Catalyst-Plugin-Session-State-Cookie
		dev-perl/Test-WWW-Mechanize-Catalyst
	)
"
SRC_TEST="do"
