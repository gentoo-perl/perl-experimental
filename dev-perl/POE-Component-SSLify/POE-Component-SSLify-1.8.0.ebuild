# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=APOCAL
MODULE_VERSION=1.008
inherit perl-module

DESCRIPTION='Makes using SSL in the world of POE easy!'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=dev-perl/Module-Build-0.36.01
}
perl_meta_build() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=dev-perl/Module-Build-0.36.01
}
perl_meta_runtime() {
	# Exporter
	echo virtual/perl-Exporter
	# IO::Handle 1.28 ( 1.280.0 )
	echo \>=virtual/perl-IO-1.25
	# Net::SSLeay 1.36 ( 1.360.0 )
	echo \>=dev-perl/Net-SSLeay-1.360.0
	# POE
	echo dev-perl/POE
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Symbol
	echo dev-lang/perl
	# Task::Weaken 1.03 ( 1.30.0 )
	echo \>=dev-perl/Task-Weaken-1.30.0
	# parent
	echo virtual/perl-parent
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
}
perl_meta_test() {
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# POE 1.267 ( 1.267.0 )
	echo \>=dev-perl/POE-1.267.0
	# POE::Component::Client::TCP
	echo dev-perl/POE
	# POE::Component::Server::TCP
	echo dev-perl/POE
	# Socket
	echo dev-lang/perl
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
