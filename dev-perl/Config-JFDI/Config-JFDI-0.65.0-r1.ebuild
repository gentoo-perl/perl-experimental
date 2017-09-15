# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=ROKR
MODULE_VERSION=0.065
inherit perl-module

DESCRIPTION="Just * Do it: A Catalyst::Plugin::ConfigLoader-style layer over Config::Any"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-perl/Any-Moose
	dev-perl/Carp-Clan-Share
	dev-perl/Clone
	dev-perl/Config-Any
	dev-perl/Config-General
	>=dev-perl/Data-Visitor-0.240.0
	dev-perl/Getopt-Usaginator
	dev-perl/Hash-Merge-Simple
	dev-perl/List-MoreUtils
	dev-perl/Path-Class
	dev-perl/Sub-Install
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.31
	test? (
		dev-perl/Test-Most
	)
"
