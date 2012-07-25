# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=0.58
inherit perl-module

DESCRIPTION='Test::WWW::Mechanize for Catalyst'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
}
perl_meta_build() {
	# Catalyst::Plugin::Session::State::Cookie
	echo dev-perl/Catalyst-Plugin-Session-State-Cookie
	# Catalyst::Plugin::Session::Store::Dummy
	echo dev-perl/Catalyst-Plugin-Session
	# ExtUtils::MakeMaker 6.59 ( 6.590.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.590.0
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
	# Test::utf8
	echo dev-perl/Test-utf8
}
perl_meta_runtime() {
	# Catalyst 5.90 ( 5.900.0 )
	echo \>=dev-perl/Catalyst-Runtime-5.900.0
	# LWP 5.816 ( 5.816.0 )
	echo \>=dev-perl/libwww-perl-5.816.0
	# Moose 0.67 ( 0.670.0 )
	echo \>=dev-perl/Moose-0.670
	# Test::WWW::Mechanize 1.14 ( 1.140.0 )
	echo \>=dev-perl/Test-WWW-Mechanize-1.14
	# WWW::Mechanize 1.54 ( 1.540.0 )
	echo \>=dev-perl/WWW-Mechanize-1.540.0
	# namespace::clean 0.09 ( 0.90.0 )
	echo \>=dev-perl/namespace-clean-0.90.0
	# perl v5.8.4 ( 5.8.4 )
	echo \>=dev-lang/perl-5.8.4
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
