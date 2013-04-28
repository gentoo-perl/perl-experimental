# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=KARMAN
MODULE_VERSION=0.18
inherit perl-module

DESCRIPTION='test Net::LDAP code'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_runtime() {
	# Data::Dump
	echo dev-perl/Data-Dump
	# IO::Select
	echo virtual/perl-IO
	# IO::Socket
	echo virtual/perl-IO
	# Net::LDAP
	echo dev-perl/perl-ldap
	# Net::LDAP::Server 0.3 ( 0.300.0 )
	echo \>=dev-perl/Net-LDAP-Server-0.300.0
	# Test::More
	echo virtual/perl-Test-Simple
	# perl 5.008003 ( 5.8.3 )
	echo \>=dev-lang/perl-5.8.3
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
