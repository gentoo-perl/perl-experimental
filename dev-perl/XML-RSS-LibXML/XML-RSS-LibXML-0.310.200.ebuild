# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=DMAKI
MODULE_VERSION=0.3102
inherit perl-module

DESCRIPTION='XML::RSS with XML::LibXML'
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
}
perl_meta_runtime() {
	# Class::Accessor::Fast
	echo dev-perl/Class-Accessor
	# DateTime::Format::Mail
	echo dev-perl/DateTime-Format-Mail
	# DateTime::Format::W3CDTF
	echo dev-perl/DateTime-Format-W3CDTF
	# Encode
	echo virtual/perl-Encode
	# UNIVERSAL::require
	echo dev-perl/UNIVERSAL-require
	# XML::LibXML 1.66 ( 1.660.0 )
	echo \>=dev-perl/XML-LibXML-1.660.0
	# XML::LibXML::XPathContext
	echo dev-perl/XML-LibXML
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
