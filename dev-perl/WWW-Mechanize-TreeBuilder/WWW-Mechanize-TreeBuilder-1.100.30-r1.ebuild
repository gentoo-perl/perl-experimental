# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_VERSION=1.10003
MODULE_AUTHOR=ASH
inherit perl-module

DESCRIPTION="This module combines WWW::Mechanize and HTML::TreeBuilder."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Moose-0.650.0
	dev-perl/HTML-Tree
	dev-perl/MooseX-Role-Parameterized
"
DEPEND="${RDEPEND}
	test? (
		dev-perl/Test-WWW-Mechanize
	)"
