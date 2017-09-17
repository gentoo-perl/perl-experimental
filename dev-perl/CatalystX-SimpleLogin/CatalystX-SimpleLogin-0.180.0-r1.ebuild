# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.18
inherit perl-module

DESCRIPTION='Provide a simple Login controller which can be reused'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
}
perl_meta_build() {
	# Catalyst::Action::RenderView
	echo dev-perl/Catalyst-Action-RenderView
	# Catalyst::ActionRole::ACL
	echo dev-perl/Catalyst-ActionRole-ACL
	# Catalyst::Plugin::Session::State::Cookie
	echo dev-perl/Catalyst-Plugin-Session-State-Cookie
	# Catalyst::Plugin::Session::Store::File
	echo dev-perl/Catalyst-Plugin-Session-Store-File
	# CatalystX::InjectComponent
	echo dev-perl/CatalystX-InjectComponent
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
	# File::Temp
	echo virtual/perl-File-Temp
	# HTTP::Request::Common
	echo dev-perl/HTTP-Message
	# SQL::Translator
	echo dev-perl/SQL-Translator
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::More 0.94 ( 0.940.0 )
	echo \>=virtual/perl-Test-Simple-0.94
}
perl_meta_runtime() {
	# Catalyst::Action::REST 0.74 ( 0.740.0 )
	echo \>=dev-perl/Catalyst-Action-REST-0.740.0
	# Catalyst::Plugin::Authentication
	echo dev-perl/Catalyst-Plugin-Authentication
	# Catalyst::Plugin::Session 0.27 ( 0.270.0 )
	echo \>=dev-perl/Catalyst-Plugin-Session-0.270.0
	# Catalyst::Runtime 5.80013 ( 5.800.130 )
	echo \>=dev-perl/Catalyst-Runtime-5.800.130
	# Catalyst::View::TT
	echo dev-perl/Catalyst-View-TT
	# CatalystX::Component::Traits 0.13 ( 0.130.0 )
	echo \>=dev-perl/CatalystX-Component-Traits-0.130.0
	# CatalystX::InjectComponent
	echo dev-perl/CatalystX-InjectComponent
	# HTML::FormHandler 0.28001 ( 0.280.10 )
	echo \>=dev-perl/HTML-FormHandler-0.280.10
	# Moose
	echo dev-perl/Moose
	# Moose::Autobox
	echo dev-perl/Moose-Autobox
	# MooseX::MethodAttributes 0.18 ( 0.180.0 )
	echo \>=dev-perl/MooseX-MethodAttributes-0.180.0
	# MooseX::RelatedClassRoles 0.004 ( 0.4.0 )
	echo \>=dev-perl/MooseX-RelatedClassRoles-0.4.0
	# MooseX::Types
	echo dev-perl/MooseX-Types
	# MooseX::Types::Common
	echo dev-perl/MooseX-Types-Common
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
