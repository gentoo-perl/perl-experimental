# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=BROQ
MODULE_VERSION=0.002009
inherit perl-module

DESCRIPTION="A modern git web viewer"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
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
	>=dev-perl/Catalyst-View-Component-SubInclude-0.07 $(comment 0.70.0)
	>=dev-perl/Catalyst-View-TT-0.34 $(comment 0.340.0)
	dev-perl/config-general
	dev-perl/DateTime
	dev-perl/DateTime-Format-Mail
	dev-perl/File-Copy-Recursive
	dev-perl/File-Type
	dev-perl/File-Type-WebImages
	dev-perl/File-Which
	>=dev-perl/Git-PurePerl-0.470.0
	dev-perl/HTML-Parser
	dev-perl/IPC-Run
	dev-perl/JSON-XS
	dev-perl/List-MoreUtils
	dev-perl/Moose
	dev-perl/Moose-Autobox
	>=dev-perl/MooseX-Declare-0.320 $(comment 0.320.0)
	dev-perl/MooseX-Types
	dev-perl/MooseX-Types-Common
	dev-perl/MooseX-Types-DateTime
	dev-perl/MooseX-Types-Path-Class
	>=dev-perl/Path-Class-0.17 $(comment 0.170.0)
	dev-perl/Sub-Exporter
	dev-perl/Syntax-Highlight-Engine-Kate
	>=dev-perl/Template-Toolkit-2.22 $(comment 2.220.0)
	dev-perl/Template-Plugin-Cycle
	dev-perl/Template-Plugin-UTF8Decode
	dev-perl/Template-Provider-Encoding
	>=dev-perl/Test-utf8-0.02 $(comment 0.20.0)
	dev-perl/Try-Tiny
	dev-perl/aliased
	dev-perl/namespace-autoclean
"
DEPEND="${RDEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.88 $(comment 0.880.0)
		dev-perl/Test-Exception
	)"

SRC_TEST=do
