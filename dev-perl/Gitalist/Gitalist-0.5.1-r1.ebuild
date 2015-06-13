# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=BROQ
MODULE_VERSION=0.005001
inherit perl-module

DESCRIPTION='A modern git web viewer'
LICENSE="GPL-2"
RESTRICT="test" # https://rt.cpan.org/Ticket/Display.html?id=103278
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"

# Catalyst::Plugin::Unicode::Encoding -> Catalyst-Runtime 5.900.420
# Template -> Template-Toolkit
# Sys::Hostname -> perl
# HTML::Entities -> HTML-Parser
RDEPEND="
	dev-perl/CGI
	dev-perl/Catalyst-Action-REST
	dev-perl/Catalyst-Action-RenderView
	dev-perl/Catalyst-Component-InstancePerContext
	dev-perl/Catalyst-Plugin-ConfigLoader
	dev-perl/Catalyst-Plugin-StackTrace
	dev-perl/Catalyst-Plugin-Static-Simple
	>=dev-perl/Catalyst-Plugin-SubRequest-0.150.0
	>=dev-perl/Catalyst-Runtime-5.900.420
	>=dev-perl/Catalyst-View-Component-SubInclude-0.70.0
	>=dev-perl/Catalyst-View-TT-0.340.0
	>=dev-perl/Class-Load-0.200.0
	dev-perl/Config-General
	dev-perl/DateTime
	dev-perl/File-Copy-Recursive
	dev-perl/File-Type
	dev-perl/File-Type-WebImages
	>=dev-perl/Git-Gitalist-0.0.2
	dev-perl/HTML-Parser
	dev-perl/IPC-Run
	dev-perl/JSON
	dev-perl/JSON-XS
	dev-perl/Moose
	dev-perl/Moose-Autobox
	>=dev-perl/MooseX-Declare-0.320.0
	dev-perl/MooseX-Storage
	dev-perl/MooseX-Types
	dev-perl/MooseX-Types-Common
	>=dev-perl/MooseX-Types-DateTime-0.50.0
	dev-perl/MooseX-Types-LoadableClass
	dev-perl/MooseX-Types-Path-Class
	>=dev-perl/Path-Class-0.170.0
	dev-perl/Syntax-Highlight-Engine-Kate
	dev-perl/Template-Plugin-Cycle
	dev-perl/Template-Plugin-UTF8Decode
	>=dev-perl/Template-Toolkit-2.220.0
	dev-perl/Try-Tiny
	dev-perl/aliased
	dev-perl/namespace-autoclean
"
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.360.0
	test? (
		>=virtual/perl-Test-Simple-0.880.0
		>=dev-perl/Test-Exception-0.310.0
	)
"
