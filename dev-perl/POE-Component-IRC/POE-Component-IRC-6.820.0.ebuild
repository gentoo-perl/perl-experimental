# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=BINGOS
MODULE_VERSION=6.82
inherit perl-module

DESCRIPTION='A fully event-driven IRC client module'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# IRC::Utils 0.12 ( 0.120.0 )
	echo \>=dev-perl/IRC-Utils-0.120.0
	# List::MoreUtils
	echo dev-perl/List-MoreUtils
	# POE 1.311 ( 1.311.0 )
	echo \>=dev-perl/POE-1.311.0
	# POE::Component::Syndicator
	echo dev-perl/POE-Component-Syndicator
	# POE::Driver::SysRW
	echo dev-perl/POE
	# POE::Filter::IRCD 2.42 ( 2.420.0 )
	echo \>=dev-perl/POE-Filter-IRCD-2.420.0
	# POE::Filter::Line
	echo dev-perl/POE
	# POE::Filter::Stackable
	echo dev-perl/POE
	# POE::Filter::Stream
	echo dev-perl/POE
	# POE::Session
	echo dev-perl/POE
	# POE::Wheel::ReadWrite
	echo dev-perl/POE
	# POE::Wheel::SocketFactory
	echo dev-perl/POE
	# perl 5.008001 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
}
perl_meta_test() {
	# Test::Differences 0.61 ( 0.610.0 )
	echo \>=dev-perl/Test-Differences-0.610.0
	# Test::More 0.47 ( 0.470.0 )
	echo \>=virtual/perl-Test-Simple-0.47
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
