# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=BROQ
MODULE_VERSION=0.003003
inherit perl-module

DESCRIPTION="A modern git web viewer"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { echo ''; }
RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.800.140.200
	dev-perl/Catalyst-Plugin-ConfigLoader
	dev-perl/Catalyst-Plugin-StackTrace
	dev-perl/Catalyst-Plugin-Static-Simple
	dev-perl/Catalyst-Plugin-Unicode-Encoding
	>=dev-perl/Catalyst-Plugin-SubRequest-0.150.0
	dev-perl/Catalyst-Action-RenderView
	dev-perl/Catalyst-Action-REST
	dev-perl/Catalyst-Component-InstancePerContext
	dev-perl/Catalyst-Controller-ActionRole
	>=dev-perl/Catalyst-View-Component-SubInclude-0.07 $(comment 0.70.0)
	>=dev-perl/Catalyst-View-TT-0.34 $(comment 0.340.0)
	dev-perl/Try-Tiny
	>=dev-perl/Template-Toolkit-2.22 $(comment Template)
	dev-perl/Template-Plugin-Cycle
	dev-perl/Template-Plugin-UTF8Decode

	dev-perl/config-general

	dev-perl/Moose
	dev-perl/Moose-Autobox
	>=dev-perl/MooseX-Declare-0.320.0
	dev-perl/MooseX-Storage
	dev-perl/MooseX-Types
	dev-perl/MooseX-Types-Common
	dev-perl/MooseX-Types-Path-Class
	dev-perl/MooseX-Types-ISO8601
	dev-perl/namespace-autoclean

	>=dev-perl/Git-PurePerl-0.470.0

	dev-perl/aliased
	virtual/perl-CGI
	dev-perl/DateTime
	dev-perl/File-Copy-Recursive
	dev-perl/File-Type
	dev-perl/File-Type-WebImages
	dev-perl/File-Which
	dev-perl/HTML-Parser $(comment HTML::Entities)
	dev-perl/IPC-Run
	dev-perl/JSON
	dev-perl/JSON-XS
	dev-perl/List-MoreUtils
	>=dev-perl/Path-Class-0.17 $(comment 0.170.0)
	dev-perl/Syntax-Highlight-Engine-Kate
	$(comment virtual/perl-Sys-Hostname)

	dev-vcs/git

"
DEPEND="${RDEPEND}
	test? (
		>=dev-perl/Test-Deep-0.108 $(comment 0.108.0)
		>=virtual/perl-Test-Simple-0.88 $(comment 0.880.0)
		>=dev-perl/Test-utf8-0.02 $(comment 0.20.0)
		>=dev-perl/Test-Exception-0.31 $(comment 0.310.0)
	)"

SRC_TEST=do
