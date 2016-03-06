# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=BOBTFISH
MODULE_VERSION="0.10"
inherit perl-module

DESCRIPTION="Use subincludes in your Catalyst views"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.800.140
	dev-perl/Catalyst-Plugin-SubRequest
	dev-perl/Moose
	dev-perl/MooseX-Types
	dev-perl/namespace-clean
	dev-perl/libwww-perl
	dev-perl/URI
"
DEPEND="
	${RDEPEND}
	>=virtual/perl-Test-Simple-0.88
	dev-perl/Catalyst-View-TT
	dev-perl/Catalyst-Action-RenderView
"
