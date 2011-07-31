# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=FLORA
MODULE_VERSION=0.1500
inherit perl-module

DESCRIPTION="Authentication and authorization against a DBIx::Class schema"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMONDEPEND="
	>=dev-perl/Catalyst-Runtime-5.800
	>=dev-perl/Catalyst-Plugin-Authentication-0.100.80
	>=dev-perl/Catalyst-Model-DBIC-Schema-0.180.0
	>=dev-perl/DBIx-Class-0.08
	dev-perl/Moose
	dev-perl/namespace-autoclean
	dev-perl/List-MoreUtils
	dev-perl/Try-Tiny
"
DEPEND="${COMMONDEPEND}
	test? (
		virtual/perl-Test-Simple
	)
"
RDEPEND="${COMMONDEPEND}"

SRC_TEST="do"
