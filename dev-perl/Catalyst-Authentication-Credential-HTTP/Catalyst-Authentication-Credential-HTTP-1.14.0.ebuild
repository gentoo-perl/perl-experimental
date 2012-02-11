# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=1.014
inherit perl-module

DESCRIPTION='HTTP Basic and Digest authentication'
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
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::MockObject
	echo dev-perl/Test-MockObject
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
}
perl_meta_runtime() {
	# Catalyst::Plugin::Authentication 0.10005 ( 0.100.50 )
	echo \>=dev-perl/Catalyst-Plugin-Authentication-0.100.50
	# Catalyst::Runtime
	echo dev-perl/Catalyst-Runtime
	# Class::Accessor::Fast
	echo dev-perl/Class-Accessor
	# Data::UUID 0.11 ( 0.110.0 )
	echo \>=dev-perl/Data-UUID-0.110
	# String::Escape
	echo dev-perl/String-Escape
	# URI::Escape
	echo dev-perl/URI
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
