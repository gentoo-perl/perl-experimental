# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=ILMARI
MODULE_VERSION=0.59
inherit perl-module

DESCRIPTION='Test::WWW::Mechanize for Catalyst'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
# Catalyst -> Catalyst-Runtime
# LWP -> libwww-perl
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.900.0
	>=dev-perl/Class-Load-0.190.0
	>=dev-perl/libwww-perl-5.816.0
	>=dev-perl/Test-WWW-Mechanize-1.140.0
	>=dev-perl/WWW-Mechanize-1.540.0
	>=dev-perl/Moose-0.670.0
	>=dev-perl/namespace-clean-0.90.0
"
# Catalyst::Plugin::Session::Store::Dummy -> Catalyst-Plugin-Session
DEPEND="
	${RDEPEND}
	test? (
		dev-perl/Catalyst-Plugin-Session-State-Cookie
		dev-perl/Catalyst-Plugin-Session
		dev-perl/Test-Exception
		>=virtual/perl-Test-Simple-0.880.0
		dev-perl/Test-utf8
	)
"
PERL_RM_FILES=(
	t/pod.t
)
SRC_TEST="do parallel"
