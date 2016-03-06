# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=SWEETKID
MODULE_VERSION=0.10
inherit perl-module

DESCRIPTION="Plack::Middleware which sets body for redirect response, if it's not already set"
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.300.0
}
perl_meta_build() {
	# Carp::Always
	echo dev-perl/Carp-Always
	# HTTP::Request::Common
	echo dev-perl/HTTP-Message
	# Plack::Test
	echo dev-perl/Plack
	# Plack::Builder
	echo dev-perl/Plack
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# HTML::Entities
	echo dev-perl/HTML-Parser
	# Plack::Middleware
	echo dev-perl/Plack
	# Plack::Util
	echo dev-perl/Plack
	# Plack::Request
	echo dev-perl/Plack
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# parent
	echo virtual/perl-parent
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
