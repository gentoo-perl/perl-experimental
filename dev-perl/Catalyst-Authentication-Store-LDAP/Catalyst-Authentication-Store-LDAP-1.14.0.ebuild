# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=1.014
inherit perl-module

DESCRIPTION='Authenticate Users against LDAP Directories'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.36 ( 6.360.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.36
	# Net::LDAP::Server::Test 0.07 ( 0.70.0 )
	echo \>=dev-perl/Net-LDAP-Server-Test-0.70.0
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::MockObject
	echo dev-perl/Test-MockObject
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
}
perl_meta_runtime() {
	# Catalyst::Plugin::Authentication 0.10003 ( 0.100.30 )
	echo \>=dev-perl/Catalyst-Plugin-Authentication-0.100.30
	# Net::LDAP
	echo dev-perl/perl-ldap
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
