# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=MIYAGAWA
MODULE_VERSION=0.2014
inherit perl-module

DESCRIPTION="High-performance preforking PSGI web server"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+recommended test"
perl_mi_build() {
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_mi_requires() {
	# Plack 0.9971
	echo \>=dev-perl/Plack-0.997.100
	# Net::Server 0.91
	echo \>=dev-perl/net-server-0.91
	# Data::Dump
	echo dev-perl/Data-Dump
	# HTTP::Parser::XS
	echo dev-perl/HTTP-Parser-XS
	# HTTP::Status
	echo '|| (
		( dev-perl/HTTP-Message >=dev-perl/libwww-perl-6.0.0 )
		<dev-perl/libwww-perl-6.0.0
	)'
	# HTTP::Date
	echo dev-perl/HTTP-Date
	# parent
	echo virtual/perl-parent
	# Test::TCP 1.11
	echo \>=dev-perl/Test-TCP-1.110
}
perl_mi_recommends() {
	# Server::Starter
	echo dev-perl/Server-Starter
	# Net::Server::SS::PreFork
	echo dev-perl/Net-Server-SS-PreFork
}
perl_mi_test() {
	# Test::Requires
	echo dev-perl/Test-Requires
}
DEPEND="
	$(perl_mi_build)
	$(perl_mi_requires)
	recommended? ( $(perl_mi_recommends) )
	test? ( $(perl_mi_test) )
"
RDEPEND="
	$(perl_mi_requires)
	recommended? ( $(perl_mi_recommends) )
"
SRC_TEST="do"
