# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=PERLER
MODULE_VERSION=0.09003
inherit perl-module

DESCRIPTION="Catalyst controller for HTML::FormFu framework"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.710.010
	>=dev-perl/MooseX-ChainedAccessors-0.20.0
	dev-perl/Catalyst-Component-InstancePerContext
	dev-perl/Config-Any
	>=dev-perl/HTML-FormFu-0.90.0
	>=dev-perl/MRO-Compat-0.10
	dev-perl/Moose
	dev-perl/Regexp-Assemble
	dev-perl/namespace-autoclean
"
DEPEND="${RDEPEND}
	test? (
		dev-perl/Catalyst-Plugin-Session-Store-File
		dev-perl/Catalyst-Plugin-ConfigLoader
		dev-perl/Test-WWW-Mechanize-Catalyst
		dev-perl/Catalyst-View-TT
		dev-perl/Catalyst-Action-RenderView
		dev-perl/config-general
	)"
SRC_TEST=do
