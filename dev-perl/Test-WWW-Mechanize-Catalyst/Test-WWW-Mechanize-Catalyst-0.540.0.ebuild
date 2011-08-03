# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.54
inherit perl-module

DESCRIPTION="Test::WWW::Mechanize for Catalyst"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { echo ''; }
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.0.0
	>=dev-perl/libwww-perl-5.816 $(comment 5.816.0)
	>=dev-perl/Test-WWW-Mechanize-1.14 $(comment 1.140.0)
	>=dev-perl/WWW-Mechanize-1.54 $(comment 1.540.0)
	>=dev-perl/Moose-0.67 $(comment 0.670.0)
	>=dev-perl/namespace-clean-0.90 $(comment 0.90.0)
"
DEPEND="
	${RDEPEND}
	test? (
		dev-perl/Catalyst-Plugin-Session-State-Cookie
		dev-perl/Catalyst-Plugin-Session $(comment Session::Store::Dummy)
		dev-perl/Test-Exception
		virtual/perl-Test-Simple $(comment Test::More)
	)
"
SRC_TEST=do
