# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=BROQ
MODULE_VERSION=0.003009
inherit perl-module

DESCRIPTION='A modern git web viewer'
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
	# Test::Deep 0.108 ( 0.108.0 )
	echo \>=dev-perl/Test-Deep-0.108.0
	# Test::Exception 0.31 ( 0.310.0 )
	echo \>=dev-perl/Test-Exception-0.310.0
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
	# Test::utf8 0.02 ( 0.20.0 )
	echo \>=dev-perl/Test-utf8-0.20.0
}
perl_meta_runtime() {
	# CGI
	echo virtual/perl-CGI
	# Catalyst::Action::REST
	echo dev-perl/Catalyst-Action-REST
	# Catalyst::Action::RenderView
	echo dev-perl/Catalyst-Action-RenderView
	# Catalyst::Component::InstancePerContext
	echo dev-perl/Catalyst-Component-InstancePerContext
	# Catalyst::Controller::ActionRole
	echo dev-perl/Catalyst-Controller-ActionRole
	# Catalyst::Plugin::ConfigLoader
	echo dev-perl/Catalyst-Plugin-ConfigLoader
	# Catalyst::Plugin::StackTrace
	echo dev-perl/Catalyst-Plugin-StackTrace
	# Catalyst::Plugin::Static::Simple
	echo dev-perl/Catalyst-Plugin-Static-Simple
	# Catalyst::Plugin::SubRequest 0.15 ( 0.150.0 )
	echo \>=dev-perl/Catalyst-Plugin-SubRequest-0.150.0
	# Catalyst::Plugin::Unicode::Encoding
	echo dev-perl/Catalyst-Plugin-Unicode-Encoding
	# Catalyst::Runtime 5.90006 ( 5.900.60 )
	echo \>=dev-perl/Catalyst-Runtime-5.900.60
	# Catalyst::View::Component::SubInclude 0.07 ( 0.70.0 )
	echo \>=dev-perl/Catalyst-View-Component-SubInclude-0.70.0
	# Catalyst::View::TT 0.34 ( 0.340.0 )
	echo \>=dev-perl/Catalyst-View-TT-0.340.0
	# Config::General
	echo dev-perl/config-general
	# DateTime
	echo dev-perl/DateTime
	# File::Copy::Recursive
	echo dev-perl/File-Copy-Recursive
	# File::Type
	echo dev-perl/File-Type
	# File::Type::WebImages
	echo dev-perl/File-Type-WebImages
	# File::Which
	echo dev-perl/File-Which
	# Git::PurePerl 0.47 ( 0.470.0 )
	echo \>=dev-perl/Git-PurePerl-0.470.0
	# HTML::Entities
	echo dev-perl/HTML-Parser
	# IPC::Run
	echo dev-perl/IPC-Run
	# JSON
	echo dev-perl/JSON
	# JSON::XS
	echo dev-perl/JSON-XS
	# List::MoreUtils
	echo dev-perl/List-MoreUtils
	# Moose
	echo dev-perl/Moose
	# Moose::Autobox
	echo dev-perl/Moose-Autobox
	# MooseX::Declare 0.32 ( 0.320.0 )
	echo \>=dev-perl/MooseX-Declare-0.320.0
	# MooseX::Storage
	echo dev-perl/MooseX-Storage
	# MooseX::Types
	echo dev-perl/MooseX-Types
	# MooseX::Types::Common
	echo dev-perl/MooseX-Types-Common
	# MooseX::Types::DateTime 0.05 ( 0.50.0 )
	echo \>=dev-perl/MooseX-Types-DateTime-0.50.0
	# MooseX::Types::Path::Class
	echo dev-perl/MooseX-Types-Path-Class
	# Path::Class 0.17 ( 0.170.0 )
	echo \>=dev-perl/Path-Class-0.17
	# Syntax::Highlight::Engine::Kate
	echo dev-perl/Syntax-Highlight-Engine-Kate
	# Sys::Hostname
	echo dev-lang/perl
	# Template 2.22 ( 2.220.0 )
	echo \>=dev-perl/Template-Toolkit-2.220.0
	# Template::Plugin::Cycle
	echo dev-perl/Template-Plugin-Cycle
	# Template::Plugin::UTF8Decode
	echo dev-perl/Template-Plugin-UTF8Decode
	# Try::Tiny
	echo dev-perl/Try-Tiny
	# aliased
	echo dev-perl/aliased
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
SRC_TEST="do"
