# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=GAUDEON
MODULE_VERSION=0.07
inherit perl-module

DESCRIPTION='Catalyst-View-Download'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
}
perl_meta_build() {
	# Catalyst::Runtime
	echo dev-perl/Catalyst-Runtime
	# Catalyst::View
	echo dev-perl/Catalyst-Runtime
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
	# FindBin
	echo dev-lang/perl
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::WWW::Mechanize::Catalyst
	echo dev-perl/Test-WWW-Mechanize-Catalyst
	# Text::CSV
	echo dev-perl/Text-CSV
	# XML::Simple
	echo dev-perl/XML-Simple
	# ok
	echo dev-perl/Test-use-ok
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
"
RDEPEND="

"
SRC_TEST="do"
