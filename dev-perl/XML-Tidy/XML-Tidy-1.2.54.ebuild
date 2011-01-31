# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"

MODULE_AUTHOR=PIP
MODULE_VERSION="1.2.54HJnFa"
MODULE_A_EXT=tgz
inherit perl-module

DESCRIPTION="tidy indenting of XML documents"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	dev-perl/Math-BaseCnv
	dev-perl/XML-XPath"

SRC_TEST=do
