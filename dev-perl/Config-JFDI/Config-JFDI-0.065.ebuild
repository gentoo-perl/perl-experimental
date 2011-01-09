# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=ROKR
MODULE_VERSION=0.065
inherit perl-module

DESCRIPTION="Just * Do it: A Catalyst::Plugin::ConfigLoader-style layer over Config::Any"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-perl/Carp-Clan-Share
	dev-perl/config-general
	dev-perl/Config-Any
	dev-perl/Clone
	>=dev-perl/Data-Visitor-0.24
	dev-perl/Getopt-Usaginator
	dev-perl/Hash-Merge-Simple
	dev-perl/List-MoreUtils
	dev-perl/Any-Moose
	dev-perl/Path-Class
	dev-perl/Sub-Install
"
DEPEND="${RDEPEND}
	test? (
		dev-perl/Test-Most
	)
"

SRC_TEST=do
