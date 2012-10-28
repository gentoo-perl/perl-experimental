# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=0.37
inherit perl-module

DESCRIPTION='Web Scraping Toolkit using HTML and CSS Selectors or XPath expressions'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	# Test::Base
	echo dev-perl/Test-Base
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::Requires
	echo dev-perl/Test-Requires
}
perl_meta_runtime() {
	# HTML::Entities
	echo dev-perl/HTML-Parser
	# HTML::Selector::XPath 0.03 ( 0.30.0 )
	echo \>=dev-perl/HTML-Selector-XPath-0.30.0
	# HTML::Tagset
	echo dev-perl/HTML-Tagset
	# HTML::TreeBuilder 3.23 ( 3.230.0 )
	echo \>=dev-perl/HTML-Tree-3.230.0
	# HTML::TreeBuilder::XPath 0.08 ( 0.80.0 )
	echo \>=dev-perl/HTML-TreeBuilder-XPath-0.80.0
	# LWP 5.827 ( 5.827.0 )
	echo \>=dev-perl/libwww-perl-5.827.0
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# UNIVERSAL::require
	echo dev-perl/UNIVERSAL-require
	# URI
	echo dev-perl/URI
	# XML::XPathEngine 0.08 ( 0.80.0 )
	echo \>=dev-perl/XML-XPathEngine-0.80.0
	# YAML
	echo dev-perl/yaml
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
