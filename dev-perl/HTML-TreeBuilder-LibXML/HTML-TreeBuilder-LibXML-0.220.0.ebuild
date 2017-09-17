# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=CAFEGRATZ
MODULE_VERSION=0.22
inherit perl-module

DESCRIPTION='HTML::TreeBuilder and XPath compatible interface with libxml'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# CPAN::Meta
	echo virtual/perl-CPAN-Meta
	# CPAN::Meta::Prereqs
	echo virtual/perl-CPAN-Meta
	# Module::Build 0.38 ( 0.380.0 )
	echo \>=dev-perl/Module-Build-0.380.0
}
perl_meta_runtime() {
	# HTML::TreeBuilder::XPath 0.14 ( 0.140.0 )
	echo \>=dev-perl/HTML-TreeBuilder-XPath-0.140.0
	# LWP::UserAgent 6 ( 6.0.0 )
	echo \>=dev-perl/libwww-perl-6.0.0
	# URI
	echo dev-perl/URI
	# Web::Scraper
	echo dev-perl/Web-Scraper
	# XML::LibXML 1.7 ( 1.700.0 )
	echo \>=dev-perl/XML-LibXML-1.700.0
	# perl 5.008001 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
}
perl_meta_test() {
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::More 0.98 ( 0.980.0 )
	echo \>=virtual/perl-Test-Simple-0.980.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
