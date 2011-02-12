# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"

MODULE_AUTHOR=PIP
MODULE_VERSION="1.8.B2AMvdl"
MODULE_A_EXT="tgz"
inherit perl-module

DESCRIPTION="tidy indenting of XML documents"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

PATCHES=(
	"${FILESDIR}/BuildPL-MathBaseCnv-1.6.patch"
)

COMMON_DEPEND="
	dev-perl/Math-BaseCnv
	dev-perl/XML-XPath
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Module-Build
	test? ( dev-perl/Test-Pod-Coverage )
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
