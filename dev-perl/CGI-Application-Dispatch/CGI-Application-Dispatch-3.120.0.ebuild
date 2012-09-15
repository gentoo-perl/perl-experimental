# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=MARKSTOS
MODULE_VERSION=3.12
inherit perl-module

DESCRIPTION='Dispatch requests to CGI::Application based objects'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
apache_test_deps() {
	echo "dev-perl/Apache-Test"
}
apache_test_code() {
	# This jiggerypokery appears to be required if Apache::Test
	# is present. If it is not present or not use test? then we're ok,
	# but otherwise, we need to specify where apache is, or it will
	# for some reason, get stuck in a death loop and fill your log file
	# and your hard drive. JOY! http://gist.github.com/447135

	# NB. Because I have no way of conditionally triggering this code
	# whether or not Apache-Test is installed ( like the code does )
	# I have test-depped on it basically forcing a known circuit.

	APACHE_TEST_HTTPD=/usr/sbin/apache2
	export APACHE_TEST_HTTPD
	perl-module_src_test
}
perl_meta_configure() {
	# Module::Build 0.38 ( 0.380.0 )
	echo \>=virtual/perl-Module-Build-0.380.0

}
perl_meta_build() {
	# CGI::PSGI
	echo dev-perl/CGI-PSGI
	# Plack 0.9956 ( 0.995.600 )
	echo \>=dev-perl/Plack-0.995.600
	# Test::LongString
	echo dev-perl/Test-LongString
	# Test::More
	echo virtual/perl-Test-Simple
}
perl_meta_runtime() {
	# CGI::Application 4.50 ( 4.500.0 )
	echo \>=dev-perl/CGI-Application-4.500.0
	# Exception::Class 1.2 ( 1.200.0 )
	echo \>=dev-perl/Exception-Class-1.200.0
	# HTTP::Exception
	echo dev-perl/HTTP-Exception
	# Try::Tiny
	echo dev-perl/Try-Tiny
	# perl v5.6.0 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# version 0.82 ( 0.820.0 )
	echo \>=virtual/perl-version-0.820.0
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

DEPEND="${DEPEND} test? ( $(apache_test_deps) )"
src_test() {
	apache_test_code;
}
