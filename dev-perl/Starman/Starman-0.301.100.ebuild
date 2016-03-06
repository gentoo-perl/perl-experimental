# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=0.3011
inherit perl-mb-tiny

DESCRIPTION='High-performance preforking PSGI/Plack web server'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build::Tiny 0.018 ( 0.18.0 )
	echo \>=dev-perl/Module-Build-Tiny-0.18.0
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
	# perl 5.008001 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
}
perl_meta_test() {
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::Requires
	echo dev-perl/Test-Requires
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
