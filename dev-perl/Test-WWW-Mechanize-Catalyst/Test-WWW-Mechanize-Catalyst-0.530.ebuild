# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.53
inherit perl-module

DESCRIPTION="Test::WWW::Mechanize for Catalyst"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.000
	>=dev-perl/libwww-perl-5.816
	>=dev-perl/Test-WWW-Mechanize-1.14
	>=dev-perl/WWW-Mechanize-1.54
	>=dev-perl/Moose-0.67
	>=dev-perl/namespace-clean-0.09
	dev-perl/Catalyst-Plugin-Session-State-Cookie
	dev-perl/Catalyst-Plugin-Session
	dev-perl/Test-Exception
"
DEPEND="${RDEPEND}"

SRC_TEST=do
