# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=TOKUHIROM
MODULE_VERSION=0.15
inherit perl-module

DESCRIPTION='HTML::TreeBuilder and XPath compatible interface with libxml'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
	# Test::More 0.98 ( 0.980.0 )
	echo \>=virtual/perl-Test-Simple-0.980.0
}
perl_meta_runtime() {
	# HTML::TreeBuilder::XPath 0.14 ( 0.140.0 )
	echo \>=dev-perl/HTML-TreeBuilder-XPath-0.140.0
	# XML::LibXML 1.7 ( 1.700.0 )
	echo \>=dev-perl/XML-LibXML-1.70
	# perl v5.8.1 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
