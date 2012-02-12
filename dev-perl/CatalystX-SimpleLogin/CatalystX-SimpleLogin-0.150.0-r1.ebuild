# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.15
inherit perl-module

DESCRIPTION="Provide a simple Login controller which can be reused"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"
comment() { true; }
IUSE="test"
COMMON_DEPEND="
	$(comment Moose)
	dev-perl/Moose
	$(comment Catalyst::Runtime 5.80013)
	>=dev-perl/Catalyst-Runtime-5.800.130
	$(comment MooseX:MethodAttributes 0.18)
	>=dev-perl/MooseX-MethodAttributes-0.180.0
	$(comment Catalyst::Action::REST 0.74)
	>=dev-perl/Catalyst-Action-REST-0.740.0
	$(comment Catalyst::Plugin::Authentication)
	dev-perl/Catalyst-Plugin-Authentication
	$(comment Catalyst::View::TT)
	dev-perl/Catalyst-View-TT
	$(comment CatalystX::InjectComponent)
	dev-perl/CatalystX-InjectComponent
	$(comment CatalystX::Component::Traits 0.13)
	>=dev-perl/CatalystX-Component-Traits-0.130.0
	$(comment Moose::Autobox 0.09)
	>=dev-perl/Moose-Autobox-0.90.0
	$(comment MooseX::Types::Common)
	dev-perl/MooseX-Types-Common
	$(comment MooseX::Types)
	dev-perl/MooseX-Types
	$(comment MooseX::RelatedClassRoles 0.004)
	>=dev-perl/MooseX-RelatedClassRoles-0.004
	$(comment Moose::Autobox)
	dev-perl/Moose-Autobox
	$(comment HTML::FormHandler 0.28001)
	>=dev-perl/HTML-FormHandler-0.280.10
	$(comment namespace::autoclean)
	dev-perl/namespace-autoclean
	$(comment Catalyst::Plugin::Session 0.27)
	>=dev-perl/Catalyst-Plugin-Session-0.270.0
"
DEPEND="
	${COMMON_DEPEND}
	$(comment Test::More 0.94)
	>=virtual/perl-Test-Simple-0.94 $(comment 0.940.0)
	$(comment Test::Exception)
	dev-perl/Test-Exception
	$(comment Catalst::Action::RenderView)
	dev-perl/Catalyst-Action-RenderView
	$(comment Catalyst::Plugin::Session::State::Cookie)
	dev-perl/Catalyst-Plugin-Session-State-Cookie
	$(comment Catalyst::Plugin::Session::Store::File)
	dev-perl/Catalyst-Plugin-Session-Store-File
	$(comment HTTP::Request::Common)
	|| (
		( >=dev-perl/libwww-perl-6.0.0 dev-perl/HTTP-Message )
		<dev-perl/libwww-perl-6.0.0
	)
	$(comment Catalyst::Controller::ActionRole 0.12)
	>=dev-perl/Catalyst-Controller-ActionRole-0.12
	$(comment Catalyst::ActionRole::ACL)
	dev-perl/Catalyst-ActionRole-ACL
	$(comment CatalystX::InjectComponent)
	dev-perl/CatalystX-InjectComponent
	$(comment SQL::Translator)
	dev-perl/SQL-Translator
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST=do
