# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=TOKUHIROM
MODULE_VERSION=0.13
inherit perl-module

DESCRIPTION="HTML::TreeBuilder and XPath compatible interface with libxml"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_mi_requires() {
	# HTML::TreeBuilder::XPath 0.14
	echo '>=dev-perl/HTML-TreeBuilder-XPath-0.140.0'
	# XML::LibXML 1.70
	echo '>=dev-perl/XML-LibXML-1.70'
}
perl_mi_test() {
	# Test::More 0.98
	echo '>=virtual/perl-Test-Simple-0.980.0'
}
RDEPEND="$(perl_mi_requires)"
DEPEND="
	$(perl_mi_requires)
	$(perl_mi_test)
"

SRC_TEST="do"
