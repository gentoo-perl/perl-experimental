# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=NUFFIN
inherit perl-module

DESCRIPTION="Encodes text to be safe in JavaScript"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="dev-perl/Moose
	>=dev-perl/Template-Toolkit-2.20
	>=dev-perl/JSON-2.12"
DEPEND="${RDEPEND}
	test? ( dev-perl/Test-use-ok )"

SRC_TEST=do
