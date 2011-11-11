# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=BOBTFISH
MODULE_VERSION="0.52"
inherit perl-module

DESCRIPTION="Test::WWW::Mechanize for Catalyst"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

DEPEND="
	>=dev-perl/Catalyst-Runtime-5.0.0
	>=dev-perl/libwww-perl-5.816
	>=dev-perl/Test-WWW-Mechanize-1.14
	>=dev-perl/WWW-Mechanize-1.54
	>=dev-perl/Moose-0.67
	>=dev-perl/namespace-clean-0.09
	dev-perl/Catalyst-Plugin-Session-State-Cookie
	dev-perl/Catalyst-Plugin-Session
	dev-perl/Test-Exception
"
