# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=5.90007
inherit perl-module

DESCRIPTION='The Catalyst Framework Runtime'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
}
perl_meta_build() {
	# Class::Data::Inheritable
	echo dev-perl/Class-Data-Inheritable
	# Data::Dump
	echo dev-perl/Data-Dump
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
	# HTTP::Request::Common
	echo dev-perl/HTTP-Message
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
}
perl_meta_runtime() {
	# B::Hooks::EndOfScope 0.08 ( 0.80.0 )
	echo \>=dev-perl/B-Hooks-EndOfScope-0.80.0
	# CGI::Simple::Cookie 1.109 ( 1.109.0 )
	echo \>=dev-perl/Cgi-Simple-1.109.0
	# Carp
	echo dev-lang/perl
	# Class::C3::Adopt::NEXT 0.07 ( 0.70.0 )
	echo \>=dev-perl/Class-C3-Adopt-NEXT-0.70.0
	# Class::Load 0.12 ( 0.120.0 )
	echo \>=dev-perl/Class-Load-0.120.0
	# Class::MOP 0.95 ( 0.950.0 )
	echo \>=dev-perl/Moose-0.950
	# Data::Dump
	echo dev-perl/Data-Dump
	# Data::OptList
	echo dev-perl/Data-OptList
	# HTML::Entities
	echo dev-perl/HTML-Parser
	# HTML::HeadParser
	echo dev-perl/HTML-Parser
	# HTTP::Body 1.06 ( 1.60.0 )
	echo \>=dev-perl/HTTP-Body-1.60.0
	# HTTP::Headers 1.64 ( 1.640.0 )
	echo \>=dev-perl/HTTP-Message-1.640.0
	# HTTP::Request 5.814 ( 5.814.0 )
	echo \>=dev-perl/HTTP-Message-5.814.0
	# HTTP::Request::AsCGI 1.0 ( 1.0.0 )
	echo \>=dev-perl/HTTP-Request-AsCGI-1.0.0
	# HTTP::Response 5.813 ( 5.813.0 )
	echo \>=dev-perl/HTTP-Message-5.813.0
	# LWP::UserAgent
	echo dev-perl/libwww-perl
	# List::MoreUtils
	echo dev-perl/List-MoreUtils
	# MRO::Compat
	echo dev-perl/MRO-Compat
	# Module::Pluggable 3.9 ( 3.900.0 )
	echo \>=virtual/perl-Module-Pluggable-3.900.0
	# Moose 1.03 ( 1.30.0 )
	echo \>=dev-perl/Moose-1.030
	# MooseX::Emulate::Class::Accessor::Fast 0.00903 ( 0.9.30 )
	echo \>=dev-perl/MooseX-Emulate-Class-Accessor-Fast-0.9.30
	# MooseX::Getopt 0.30 ( 0.300.0 )
	echo \>=dev-perl/MooseX-Getopt-0.300.0
	# MooseX::MethodAttributes::Inheritable 0.24 ( 0.240.0 )
	echo \>=dev-perl/MooseX-MethodAttributes-0.240.0
	# MooseX::Role::WithOverloading 0.09 ( 0.90.0 )
	echo \>=dev-perl/MooseX-Role-WithOverloading-0.90.0
	# MooseX::Types
	echo dev-perl/MooseX-Types
	# MooseX::Types::Common::Numeric
	echo dev-perl/MooseX-Types-Common
	# MooseX::Types::LoadableClass 0.003 ( 0.3.0 )
	echo \>=dev-perl/MooseX-Types-LoadableClass-0.3.0
	# Path::Class 0.09 ( 0.90.0 )
	echo \>=dev-perl/Path-Class-0.09
	# Plack 0.9974 ( 0.997.400 )
	echo \>=dev-perl/Plack-0.997.400
	# Plack::Middleware::ReverseProxy 0.04 ( 0.40.0 )
	echo \>=dev-perl/Plack-Middleware-ReverseProxy-0.40.0
	# Plack::Test::ExternalServer
	echo dev-perl/Plack-Test-ExternalServer
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# String::RewritePrefix 0.004 ( 0.4.0 )
	echo \>=dev-perl/String-RewritePrefix-0.4.0
	# Sub::Exporter
	echo dev-perl/Sub-Exporter
	# Task::Weaken
	echo dev-perl/Task-Weaken
	# Text::Balanced
	echo virtual/perl-Text-Balanced
	# Text::SimpleTable 0.03 ( 0.30.0 )
	echo \>=dev-perl/Text-SimpleTable-0.30.0
	# Time::HiRes
	echo virtual/perl-Time-HiRes
	# Tree::Simple 1.15 ( 1.150.0 )
	echo \>=dev-perl/Tree-Simple-1.15
	# Tree::Simple::Visitor::FindByPath
	echo dev-perl/Tree-Simple-VisitorFactory
	# Try::Tiny
	echo dev-perl/Try-Tiny
	# URI 1.35 ( 1.350.0 )
	echo \>=dev-perl/URI-1.35
	# namespace::autoclean 0.09 ( 0.90.0 )
	echo \>=dev-perl/namespace-autoclean-0.090
	# namespace::clean 0.13 ( 0.130.0 )
	echo \>=dev-perl/namespace-clean-0.130
	# perl v5.8.4 ( 5.8.4 )
	echo \>=dev-lang/perl-5.8.4
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
