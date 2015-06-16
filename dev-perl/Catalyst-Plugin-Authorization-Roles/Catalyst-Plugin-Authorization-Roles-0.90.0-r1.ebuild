# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.09
inherit perl-module

DESCRIPTION="Role based authorization for Catalyst based on Catalyst::Plugin::Authentication"

IUSE="test"

SLOT="0"

KEYWORDS="~amd64 ~x86"
comment() { echo ''; }
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.700.0
	>=dev-perl/Catalyst-Plugin-Authentication-0.100.30
	>=dev-perl/Set-Object-1.14 $(comment 1.140.0)
	>=dev-perl/UNIVERSAL-isa-0.05 $(comment 0.50.0)
"
DEPEND="
	${RDEPEND}
	test? (
		virtual/perl-Test-Simple $(comment Test::More)
		dev-perl/Test-Exception
	)
"
