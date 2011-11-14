# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=3
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION="0.14"
inherit perl-module

DESCRIPTION="Provide a simple Login controller which can be reused"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"
comment() { echo ''; }
IUSE="test"
COMMON_DEPEND="
	dev-perl/Moose
	>=dev-perl/Catalyst-Runtime-5.800.130
	>=dev-perl/MooseX-MethodAttributes-0.180.0
	>=dev-perl/Catalyst-Action-REST-0.740.0
	dev-perl/Catalyst-Plugin-Authentication
	dev-perl/Catalyst-View-TT
	dev-perl/CatalystX-InjectComponent
	>=dev-perl/CatalystX-Component-Traits-0.130.0
	>=dev-perl/Moose-Autobox-0.90.0
	dev-perl/MooseX-Types-Common
	dev-perl/MooseX-Types
	>=dev-perl/MooseX-RelatedClassRoles-0.004 $(comment 0.4.0)
	dev-perl/Moose-Autobox
	>=dev-perl/HTML-FormHandler-0.280.10
	dev-perl/namespace-autoclean
	>=dev-perl/Catalyst-Plugin-Session-0.27 $(comment 0.270.0)
"
DEPEND="
	${COMMON_DEPEND}
		>=virtual/perl-Test-Simple-0.94 $(comment 0.940.0)
		dev-perl/Test-Exception
		dev-perl/Catalyst-Action-RenderView
		dev-perl/Catalyst-Plugin-Session-State-Cookie
		dev-perl/Catalyst-Plugin-Session-Store-File
		dev-perl/libwww-perl
		>=dev-perl/Catalyst-Controller-ActionRole-0.12 $(comment 0.120.0)
		dev-perl/Catalyst-ActionRole-ACL
		dev-perl/CatalystX-InjectComponent
		dev-perl/SQL-Translator
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST=do
