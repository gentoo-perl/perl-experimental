# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=4.02
inherit perl-module

DESCRIPTION="All you need to start with Catalyst"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
comment() { true;}
RDEPEND="
	$(comment Catalyst 5.80)
	>=dev-perl/Catalyst-Runtime-5.800.0

	$(comment Catalyst::Action::REST)
	dev-perl/Catalyst-Action-REST

	$(comment Catalyst::ActionRole::ACL)
	dev-perl/Catalyst-ActionRole-ACL

	$(comment Catalyst::Authentication::Credential::HTTP)
	dev-perl/Catalyst-Authentication-Credential-HTTP

	$(comment Catalyst::Authentication::Store::DBIx::Class)
	dev-perl/Catalyst-Authentication-Store-DBIx-Class

	$(comment Catalst::Component::InstancePerContext)
	dev-perl/Catalyst-Component-InstancePerContext

	$(comment Catalyst::Controller::ActionRole)
	dev-perl/Catalyst-Controller-ActionRole

	$(comment Catalyst::Devel 1.26)
	>=dev-perl/Catalyst-Devel-1.260.0

	$(comment Catalyst::Manual 5.80)
	>=dev-perl/Catalyst-Manual-5.800.0

	$(comment Catalyt::Model::Adaptor)
	dev-perl/Catalyst-Model-Adaptor

	$(comment Catalyst::Model::DBIC::Schema)
	dev-perl/Catalyst-Model-DBIC-Schema

	$(comment Catalyst::Plugin::Authentication)
	dev-perl/Catalyst-Plugin-Authentication

	$(comment Catalyst::Plugin::ConfigLoader)
	dev-perl/Catalyst-Plugin-ConfigLoader

	$(comment Catalyst::Plugin::I18N)
	dev-perl/Catalyst-Plugin-I18N

	$(comment Catalyst::Plugin::Session)
	dev-perl/Catalyst-Plugin-Session

	$(comment Catalyst::Plugin::Session::State::Cookie)
	dev-perl/Catalyst-Plugin-Session-State-Cookie

	$(comment Catalyst::Plugin::Session::Store::DBIC)
	dev-perl/Catalyst-Plugin-Session-Store-DBIC

	$(comment Catalyst::Plugin::Session::Store::File)
	dev-perl/Catalyst-Plugin-Session-Store-File

	$(comment Catalyst::Plugin::StackTrace)
	dev-perl/Catalyst-Plugin-StackTrace

	$(comment Catalyst::Plugin::Static::Simple)
	dev-perl/Catalyst-Plugin-Static-Simple

	$(comment Catalyst::Plugin::Unicode::Encoding)
	dev-perl/Catalyst-Plugin-Unicode-Encoding

	$(comment Catalyst::View::Email)
	dev-perl/Catalyst-View-Email

	$(comment Catalyst::View::TT)
	dev-perl/Catalyst-View-TT

	$(comment CatalystX::Component::Traits)
	dev-perl/CatalystX-Component-Traits

	$(comment CatalystX::LeakChecker)
	dev-perl/CatalystX-LeakChecker

	$(comment CatalystX::Profile)
	dev-perl/CatalystX-Profile

	$(comment CatalystX::REPL)
	dev-perl/CatalystX-REPL

	$(comment CatalystX::SimpleLogin)
	dev-perl/CatalystX-SimpleLogin

	$(comment FCGI)
	dev-perl/FCGI

	$(comment FCGI::ProcManager)
	dev-perl/FCGI-ProcManager

	$(comment Starman)
	dev-perl/Starman

	$(comment Test::WWW::Mechanize::Catalyst)
	dev-perl/Test-WWW-Mechanize-Catalyst

	$(comment local::lib)
	dev-perl/local-lib
"
DEPEND="${RDEPEND}"

SRC_TEST=do
