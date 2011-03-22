# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=BROQ
MODULE_VERSION=0.003001
inherit perl-module

DESCRIPTION="A modern git web viewer"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-vcs/git
	virtual/perl-CGI
	dev-perl/Catalyst-Action-RenderView
	dev-perl/Catalyst-Component-InstancePerContext
	dev-perl/Catalyst-Controller-ActionRole
	dev-perl/Catalyst-Plugin-ConfigLoader
	dev-perl/Catalyst-Plugin-StackTrace
	dev-perl/Catalyst-Plugin-Static-Simple
	>=dev-perl/Catalyst-Plugin-SubRequest-0.150.0
	dev-perl/Catalyst-Plugin-Unicode-Encoding
	>=dev-perl/Catalyst-Runtime-5.800.150
	>=dev-perl/Catalyst-View-Component-SubInclude-0.07
	>=dev-perl/Catalyst-View-TT-0.34
	dev-perl/config-general
	dev-perl/DateTime
	dev-perl/File-Copy-Recursive
	dev-perl/File-Type
	dev-perl/File-Type-WebImages
	dev-perl/File-Which
	>=dev-perl/Git-PurePerl-0.47
	dev-perl/HTML-Parser
	dev-perl/IPC-Run
	dev-perl/JSON-XS
	dev-perl/List-MoreUtils
	dev-perl/Moose
	dev-perl/Moose-Autobox
	>=dev-perl/MooseX-Declare-0.320
	dev-perl/MooseX-Types
	dev-perl/MooseX-Types-Common
	dev-perl/MooseX-Types-DateTime
	dev-perl/MooseX-Types-Path-Class
	>=dev-perl/Path-Class-0.17
	dev-perl/Syntax-Highlight-Engine-Kate
	>=dev-perl/Template-Toolkit-2.22
	dev-perl/Template-Plugin-Cycle
	dev-perl/Template-Plugin-UTF8Decode
	>=dev-perl/Test-utf8-0.02
	dev-perl/Try-Tiny
	dev-perl/aliased
	dev-perl/namespace-autoclean
"
DEPEND="${RDEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.88
		dev-perl/Test-Exception
	)"

SRC_TEST=do
