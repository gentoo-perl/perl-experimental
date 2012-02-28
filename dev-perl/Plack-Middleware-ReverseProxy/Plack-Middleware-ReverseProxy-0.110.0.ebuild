# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=DANJOU
MODULE_VERSION=0.11
inherit perl-module

DESCRIPTION='Supports app to run as a reverse proxy backend'
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
	# Test::Base
	echo dev-perl/Test-Base
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# Plack::Middleware
	echo dev-perl/Plack
	# Plack::Request
	echo dev-perl/Plack
	# YAML
	echo dev-perl/yaml
	# parent
	echo virtual/perl-parent
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
