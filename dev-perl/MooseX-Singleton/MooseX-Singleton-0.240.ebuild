# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=DROLSKY
MODULE_VERSION="0.24"
inherit perl-module

DESCRIPTION="turn your Moose class into a singleton"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

COMMON_DEPEND="
	>=dev-perl/Moose-0.94
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Scalar-List-Utils
	virtual/perl-Test-Simple
	dev-perl/Test-Exception
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
