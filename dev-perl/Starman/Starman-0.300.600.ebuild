# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=0.3006
inherit perl-module

DESCRIPTION='High-performance preforking PSGI/Plack web server'
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
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::Requires
	echo dev-perl/Test-Requires
}
perl_meta_runtime() {
	# Data::Dump
	echo dev-perl/Data-Dump
	# HTTP::Date
	echo dev-perl/HTTP-Date
	# HTTP::Parser::XS
	echo dev-perl/HTTP-Parser-XS
	# HTTP::Status
	echo dev-perl/HTTP-Message
	# Net::Server 0.91 ( 0.910.0 )
	echo \>=dev-perl/net-server-0.91
	# Plack 0.9971 ( 0.997.100 )
	echo \>=dev-perl/Plack-0.997.100
	# Test::TCP 1.11 ( 1.110.0 )
	echo \>=dev-perl/Test-TCP-1.110.0
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
