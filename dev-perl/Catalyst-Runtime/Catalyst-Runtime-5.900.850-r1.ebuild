# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=JJNAPIORK
MODULE_VERSION=5.90085
inherit perl-module

DESCRIPTION='The Catalyst Framework Runtime'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
# IO::Scalar -> IO-stringy
# Test::More -> Test-Simple
# CGI::Simple::Cookie -> CGI-Simple
# Class::MOP -> Moose
# Devel::InnerPackage -> Module-Pluggable
# HTML::Entities -> HTML-Parser
# HTML::HeadParser -> HTML-Parser
# HTTP::Headers -> HTTP-Message
# HTTP::Request -> HTTP-Message
# HTTP::Response -> HTTP-Message
# LWP -> libwww-perl
# MooseX::MethodAttributes::Inheritable -> MooseX-MethodAttributes
# Scalar::Util -> Scalar-List-Utils
# Tree::Simple::Visitor::FindByPath -> Tree-Simple-VisitorFactory
# Plack::Request::Upload -> Plack
# Plack::Middleware::Conditional -> Plack
# Plack::Middleware::IIS6ScriptNameFix -> Plack
# Plack::Middleware::IIS7KeepAliveFix -> Plack
# Plack::Middleware::LighttpdScriptNameFix -> Plack
# Plack::Middleware::ContentLength -> Plack
# Plack::Middleware::Head -> Plack
# Plack::Middleware::HTTPExceptions -> Plack

RDEPEND="
	!<=dev-perl/Catalyst-Action-REST-0.670.0
	!<=dev-perl/Catalyst-Action-RenderView-0.70.0
	!<=dev-perl/Catalyst-Authentication-Credential-HTTP-1.9.0
	!<=dev-perl/Catalyst-Devel-1.190.0
	!<=dev-perl/Catalyst-Plugin-Authentication-0.100.100
	!<=dev-perl/Catalyst-Plugin-ConfigLoader-0.220.0
	!<=dev-perl/Catalyst-Plugin-Session-0.210.0
	!<=dev-perl/Catalyst-Plugin-Session-State-Cookie-0.100.0
	!<=dev-perl/Catalyst-Plugin-Session-Store-FastMmap-0.90.0
	!<=dev-perl/Catalyst-Plugin-Session-Store-File-0.16.0
	!<=dev-perl/Catalyst-Plugin-SubRequest-0.140.0
	!<=dev-perl/Catalyst-Plugin-Unicode-Encoding-0.200.0
	!<=dev-perl/Catalyst-View-Mason-0.170.0
	!<=dev-perl/Test-WWW-Mechanize-Catalyst-0.530.0

	>=dev-lang/perl-5.8.3
	dev-perl/CGI-Struct
	>=virtual/perl-Carp-1.250.0
	>=dev-perl/Catalyst-DispatchType-Regex-5.900.210
	>=dev-perl/CGI-Simple-1.109.0
	>=dev-perl/Class-C3-Adopt-NEXT-0.70.0
	dev-perl/Class-Data-Inheritable
	>=dev-perl/Class-Load-0.120.0
	dev-perl/Data-Dump
	dev-perl/Data-OptList
	>=virtual/perl-Encode-2.490.0
	dev-perl/HTML-Parser
	>=dev-perl/HTTP-Body-1.220.0
	>=dev-perl/HTTP-Message-5.814.0
	>=dev-perl/HTTP-Request-AsCGI-1.0.0
	dev-perl/Hash-MultiValue
	>=dev-perl/JSON-MaybeXS-1.0.0
	dev-perl/List-MoreUtils
	dev-perl/MRO-Compat
	>=dev-perl/Module-Pluggable-4.700.0
	>=dev-perl/Moose-0.950.0
	>=dev-perl/Moose-1.30.0
	>=dev-perl/MooseX-Emulate-Class-Accessor-Fast-0.9.30
	>=dev-perl/MooseX-Getopt-0.480.0
	>=dev-perl/MooseX-MethodAttributes-0.240.0
	>=dev-perl/MooseX-Role-WithOverloading-0.90.0
	>=dev-perl/Path-Class-0.90.0
	>=dev-perl/Plack-0.999.100
	>=dev-perl/Plack-Middleware-FixMissingBodyInRedirect-0.90.0
	>=dev-perl/Plack-Middleware-MethodOverride-0.120.0
	>=dev-perl/Plack-Middleware-RemoveRedundantBody-0.30.0
	>=dev-perl/Plack-Middleware-ReverseProxy-0.40.0
	dev-perl/Plack-Test-ExternalServer
	dev-perl/Safe-Isa
	virtual/perl-Scalar-List-Utils
	dev-perl/Stream-Buffered
	>=dev-perl/String-RewritePrefix-0.4.0
	dev-perl/Sub-Exporter
	dev-perl/Task-Weaken
	virtual/perl-Text-Balanced
	>=dev-perl/Text-SimpleTable-0.30.0
	virtual/perl-Time-HiRes
	>=dev-perl/Tree-Simple-1.150.0
	dev-perl/Tree-Simple-VisitorFactory
	>=dev-perl/Try-Tiny-0.170.0
	>=dev-perl/URI-1.650.0
	>=dev-perl/URI-ws-0.30.0
	>=dev-perl/libwww-perl-5.837.0
	>=dev-perl/namespace-autoclean-0.90.0
	>=dev-perl/namespace-clean-0.230.0
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	test? (
		dev-perl/Test-Fatal
		>=virtual/perl-Test-Simple-0.880.0
		dev-perl/IO-stringy
	)
"
