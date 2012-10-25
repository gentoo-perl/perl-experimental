# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=CFRANKS
MODULE_VERSION=0.09004
inherit perl-module

DESCRIPTION='Catalyst integration for HTML::FormFu'
LICENSE=" || ( Artistic GPL-2 )"
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
	# Catalyst::Plugin::ConfigLoader 0.23 ( 0.230.0 )
	echo \>=dev-perl/Catalyst-Plugin-ConfigLoader-0.230.0
	# Catalyst::Plugin::Session
	echo dev-perl/Catalyst-Plugin-Session
	# Catalyst::Plugin::Session::State::Cookie
	echo dev-perl/Catalyst-Plugin-Session-State-Cookie
	# Catalyst::Plugin::Session::Store::File
	echo dev-perl/Catalyst-Plugin-Session-Store-File
	# Catalyst::View::TT
	echo dev-perl/Catalyst-View-TT
	# Config::General
	echo dev-perl/config-general
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
	# Template
	echo dev-perl/Template-Toolkit
	# Test::More 0.92 ( 0.920.0 )
	echo \>=virtual/perl-Test-Simple-0.92
	# Test::WWW::Mechanize 1.16 ( 1.160.0 )
	echo \>=dev-perl/Test-WWW-Mechanize-1.16
	# Test::WWW::Mechanize::Catalyst
	echo dev-perl/Test-WWW-Mechanize-Catalyst
}
perl_meta_runtime() {
	# Catalyst::Component::InstancePerContext
	echo dev-perl/Catalyst-Component-InstancePerContext
	# Catalyst::Runtime 5.71001 ( 5.710.10 )
	echo \>=dev-perl/Catalyst-Runtime-5.710.10
	# Config::Any
	echo dev-perl/Config-Any
	# File::Spec
	echo virtual/perl-File-Spec
	# HTML::FormFu 0.09007 ( 0.90.70 )
	echo \>=dev-perl/HTML-FormFu-0.90.70
	# Moose
	echo dev-perl/Moose
	# MooseX::Attribute::Chained v1.0.1 ( 1.0.1 )
	echo \>=dev-perl/MooseX-Attribute-Chained-1.0.1
	# Regexp::Assemble
	echo dev-perl/Regexp-Assemble
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Task::Weaken
	echo dev-perl/Task-Weaken
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
