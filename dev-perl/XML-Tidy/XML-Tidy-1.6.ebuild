# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"

MODULE_AUTHOR=PIP
MODULE_VERSION="1.6.A7RJKwl"
MODULE_A_EXT="tgz"
inherit perl-module

DESCRIPTION="tidy indenting of XML documents"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

PATCHES=(
	"${FILESDIR}/BuildPL-MathBaseCnv-${PV}.patch"
)

COMMON_DEPEND="
	dev-perl/Math-BaseCnv
	dev-perl/XML-XPath
"
DEPEND="
	${COMMON_DEPEND}
	virtual/perl-Module-Build
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
