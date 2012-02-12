# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=FLORA
MODULE_VERSION="5.89002-TRIAL"
MODULE_DZIL_TRIAL=1
inherit perl-module perl-declaredeps

DESCRIPTION="The Elegant MVC Web Application Framework - runtime version"

SLOT="0"
KEYWORDS=""
IUSE=""

#PATCHES=(
#	"${FILESDIR}/${MODULE_VERSION}/0001_known_broken_tests.patch"
#)

depend List-MoreUtils
depend namespace-autoclean 0.90.0
depend namespace-clean 0.130.0
depend B-Hooks-EndOfScope 0.08 # 0.80.0
depend MooseX-Emulate-Class-Accessor-Fast 0.9.30
depend Data-OptList
depend Moose 1.03 # 1.30.0
depend MooseX-MethodAttributes 0.240.0 # MooseX::MethodAttributes::Inheritable 0.240.0
depend MooseX-Role-WithOverloading 0.90.0
depend MooseX-Types-LoadableClass 0.3.0
# depend Carp # CORE
depend Class-C3-Adopt-NEXT 0.70.0
depend Cgi-Simple 1.109 # CGI::Simple::Cookie 1.109.0
depend Data-Dump
depend Data-OptList
depend HTML-Parser # HTML::Entities
depend HTML-Parser # HTML::HeadParser
depend HTTP-Body 1.60.0
depend HTTP-Message 1.640.0 # HTTP::Headers
depend HTTP-Message 5.814.0 # HTTP::Request
depend HTTP-Message 5.813.0 # HTTP::Response
depend HTTP-Request-AsCGI 1.0.0
depend libwww-perl # LWP::UserAgent
depend-virtual Module-Pluggable 3.9 # 3.900.0
depend Path-Class 0.90.0
depend-virtual Scalar-List-Utils # Scalar-Util
depend Sub-Exporter
depend Text-SimpleTable 0.30.0
depend-virtual Time-HiRes
depend Tree-Simple 1.15 # 1.150.0
depend Tree-Simple-VisitorFactory # Tree-Simple-Visitor-FindByPath
depend Try-Tiny
depend URI 1.35 # 1.350.0
depend Task-Weaken
depend-virtual Text-Balanced
depend MRO-Compat
depend MooseX-Getopt 0.30 # 0.300.0
depend MooseX-Types
depend MooseX-Types-Common # MooseX::Types::Common::Numeric
depend String-RewritePrefix 0.4.0
depend Plack 0.993.500
depend Plack-Middleware-ReverseProxy 0.40.0

test-depend Class-Data-Inheritable
test-depend Test-Exception
test-depend-virtual Test-Simple 0.88 # Test::More 0.880.0
test-depend Data-Dump

conflict Catalyst-Plugin-SubRequest 0.140.0
conflict Catalyst-Model-Akismet 0.02 # 0.20.0
conflict Catalyst-Component-ACCEPT_CONTEXT 0.06 # 0.60.0
conflict Catalyst-Plugin-ENV
conflict Catalyst-Plugin-Unicode-Encoding 0.200.0
conflict Catalyst-Plugin-Authentication 0.100.100
conflict Catalyst-Authentication-Credential-HTTP 1.9.0
conflict Catalyst-Plugin-Session-Store-File 0.16 # 0.160.0
conflict Catalyst-Plugin-Session 0.210.0
conflict Catalyst-Plugin-Session-State-Cookie 0.10 # 0.100.0
conflict Catalyst-Plugin-Session-Store-FastMmap 0.90.0
conflict Catalyst-Controller-AllowDisable 0.03 # 0.30.0
conflict Reaction 0.001999 # 0.1.999
conflict Catalyst-Plugin-Upload-Image-Magick 0.03 # 0.30.0
conflict Catalyst-Plugin-ConfigLoader 0.220.0
conflict Catalyst-Devel 1.190.0
conflict Catalyst-Plugin-SmartURI 0.032 # 0.32.0
conflict CatalystX-CRUD 0.37 # 0.370.0
conflict Catalyst-Action-RenderView 0.70.0
conflict Catalyst-Action-DebugCookie 0.999002 # 0.999.2
conflict Catalyst-Plugin-Authentication 0.100.91
conflict CatalystX-Imports 0.03 # 0.30.0
conflict Catalyst-Plugins-HashedCookies 1.03 # 1.30.0
conflict Catalyst-Action-REST 0.670.0
conflict CatalystX-CRUD 0.42 # 0.420.0
conflict CatalystX-CRUD-Model-RDBO 0.20 # 0.200.0
conflict Catalyst-View-Mason 0.17 # 0.170.0

RDEPEND="|| ( >=dev-perl/Moose-1.990 >=dev-perl/Class-MOP-0.95 )"
DEPEND="|| ( >=dev-perl/Moose-1.990 >=dev-perl/Class-MOP-0.95 )"

ddep_setup

SRC_TEST=do
