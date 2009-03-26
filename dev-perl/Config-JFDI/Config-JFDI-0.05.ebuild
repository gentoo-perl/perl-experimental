# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MODULE_AUTHOR=RKRIMEN
inherit perl-module

DESCRIPTION="Just * Do it: A Catalyst::Plugin::ConfigLoader-style layer over Config::Any"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""
DEPEND="
	dev-perl/Hash-Merge-Simple
	dev-perl/Config-Any
	dev-perl/Clone
	dev-perl/List-MoreUtils
	dev-perl/Moose
	dev-perl/Path-Class
	dev-perl/Sub-Install
	dev-perl/Data-Visitor
	>=virtual/perl-Module-Pluggable-3.01
"
