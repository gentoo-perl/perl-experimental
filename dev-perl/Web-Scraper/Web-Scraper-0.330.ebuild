# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=0.33
inherit perl-module

DESCRIPTION="Web Scraping Toolkit using HTML and CSS Selectors or XPath expressions"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-perl/HTML-Parser
	>=dev-perl/HTML-Selector-XPath-0.30.0
	dev-perl/HTML-Tagset
	dev-perl/HTML-Tree
	dev-perl/HTML-TreeBuilder-LibXML
	dev-perl/HTML-TreeBuilder-XPath
	dev-perl/libwww-perl
	virtual/perl-Scalar-List-Utils
	dev-perl/UNIVERSAL-require
	dev-perl/URI
	dev-perl/XML-XPathEngine
	dev-perl/yaml"
DEPEND="${RDEPEND}"

SRC_TEST="do"
