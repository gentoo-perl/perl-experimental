# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MODULE_AUTHOR=RKRIMEN
inherit perl-module

DESCRIPTION="Just * Do it: A Catalyst::Plugin::ConfigLoader-style layer over Config::Any"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-perl/Carp-Clan-Share
	dev-perl/Config-Any
	dev-perl/Clone
	>=dev-perl/Data-Visitor-0.24
	dev-perl/Hash-Merge-Simple
	dev-perl/List-MoreUtils
	dev-perl/Moose
	dev-perl/MooseX-AttributeHelpers
	dev-perl/Path-Class
	dev-perl/Sub-Install
"
DEPEND="${RDEPEND}
	test? (
		dev-perl/Test-Most
	)
"

SRC_TEST=do
