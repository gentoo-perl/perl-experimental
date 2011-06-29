# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR="MIROD"
MODULE_VERSION="0.12"
inherit perl-module

DESCRIPTION="Add XPath support to HTML::TreeBuilder"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-perl/HTML-Tree
	virtual/perl-Scalar-List-Utils
	dev-perl/XML-XPathEngine"
DEPEND="${RDEPEND}"

SRC_TEST="do"
