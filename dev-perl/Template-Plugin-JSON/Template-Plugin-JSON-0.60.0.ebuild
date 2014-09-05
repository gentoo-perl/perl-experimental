# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=NUFFIN
MODULE_VERSION=0.06
inherit perl-module

DESCRIPTION="Encodes text to be safe in JavaScript"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test recommended"

RDEPEND="dev-perl/Moose
	>=dev-perl/Template-Toolkit-2.200.0
	>=dev-perl/JSON-2.120.0
	recommended? ( dev-perl/JSON-XS )"
DEPEND="${RDEPEND}
	test? (
		virtual/perl-Test-Simple
		dev-perl/Test-use-ok
	)"
SRC_TEST=do
