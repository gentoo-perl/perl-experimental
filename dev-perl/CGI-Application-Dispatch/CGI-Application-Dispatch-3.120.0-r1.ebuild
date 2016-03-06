# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=MARKSTOS
MODULE_VERSION=3.12
inherit perl-module

DESCRIPTION='Dispatch requests to CGI::Application based objects'
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test apache_test"

# Test::More -> Test-Simple
TEST_DEPEND_APACHE="dev-perl/Apache-Test"
RDEPEND="
	>=virtual/perl-version-0.820.0
	>=dev-perl/CGI-Application-4.500.0
	dev-perl/HTTP-Exception
	>=dev-perl/Exception-Class-1.200.0
	dev-perl/Try-Tiny
"
DEPEND="${RDEPEND}
	>=dev-perl/Module-Build-0.380.0
	test? (
		apache_test? (
			${TEST_DEPEND_APACHE}
		)
		dev-perl/CGI-PSGI
		virtual/perl-Test-Simple
		dev-perl/Test-LongString
		>=dev-perl/Plack-0.995.600
	)
"
apache_env() {
	# This jiggerypokery appears to be required if Apache::Test
	# is present. If it is not present or not use test? then we're ok,
	# but otherwise, we need to specify where apache is, or it will
	# for some reason, get stuck in a death loop and fill your log file
	# and your hard drive. JOY! http://gist.github.com/447135
	APACHE_TEST_HTTPD=/usr/sbin/apache2
	export APACHE_TEST_HTTPD
}
src_prepare() {
	if  ! use apache_test || ! use test; then
		PERL_RM_FILES=( "t/handler.t" )
	fi
	perl-module_src_prepare
}
src_test() {
	use apache_test && apache_env;
	perl-module_src_test;
}
