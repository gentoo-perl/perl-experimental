# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=BOBTFISH
MODULE_VERSION="1.1"
inherit perl-module

DESCRIPTION="Unicode aware Catalyst"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-perl/Catalyst-Runtime-5.800.0
	dev-perl/Class-Data-Inheritable
	>=virtual/perl-Encode-2.21
	>=dev-perl/libwww-perl-5.828
	>=dev-perl/URI-1.36
"
DEPEND="
	${RDEPEND}
	test? (
		>=virtual/perl-Test-Simple-0.88
		dev-perl/IO-stringy
	)
"
SRC_TEST=do
