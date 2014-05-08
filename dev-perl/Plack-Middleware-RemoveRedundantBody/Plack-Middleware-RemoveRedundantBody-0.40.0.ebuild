# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=SWEETKID
MODULE_VERSION=0.04
inherit perl-module

DESCRIPTION="Plack::Middleware which sets removes body for HTTP response if it's not required"
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
	# HTTP::Message
	echo dev-perl/HTTP-Message
	# Plack::Middleware
	echo dev-perl/Plack
	# Plack::Util
	echo dev-perl/Plack
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# Plack
	echo dev-perl/Plack
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
