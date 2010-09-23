# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=ASH
inherit perl-module

DESCRIPTION="This module combines WWW::Mechanize and HTML::TreeBuilder."

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND="
	>=dev-perl/Moose-0.65
	dev-perl/HTML-Tree
	dev-perl/MooseX-Role-Parameterized
"
RDEPEND="${DEPEND}"
SRC_TEST=do
