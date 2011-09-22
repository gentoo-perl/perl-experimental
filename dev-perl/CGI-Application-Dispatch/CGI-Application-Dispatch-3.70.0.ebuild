# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=MARKSTOS
MODULE_VERSION=3.07
inherit perl-module

DESCRIPTION="Framework for building reusable web-applications"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
comment() { true; }
RDEPEND="
	$(comment perl 5.6.0)

	$(comment version 0.82)
	>=virtual/perl-version-0.82
	$(comment CGI::Application 4.50)
	>=dev-perl/CGI-Application-4.500.0
	$(comment HTTP::Exception)
	dev-perl/HTTP-Exception
	$(comment Exception::Class 1.2)
	>=dev-perl/Exception-Class-1.200.0
	$(comment Try::Tiny)
	dev-perl/Try-Tiny
"
DEPEND="
	$(comment --configure)
	$(comment 'This stanza is to match the dynamic stuff at the top of
		Build.PL')

	!test? (
		$(comment Module::Build)
		>=virtual/perl-Module-Build-0.380.0
	)
	test? (
		$(comment Apache::Test)
		dev-perl/Apache-Test

		$(comment Apache::TestMB)
		dev-perl/Apache-Test
	)
	$(comment 'End of Build.PL heading magic')

	$(comment --build)
	$(comment CGI::PSGI)
	dev-perl/CGI-PSGI
	$(comment Test::More)
	virtual/perl-Test-Simple
	$(comment Test::LongString)
	dev-perl/Test-LongString
	$(comment Plack 0.9956)
	>=dev-perl/Plack-0.995.600
	test? (
		$(comment Apache::Test)
		dev-perl/Apache-Test
	)
	${RDEPEND}
"
SRC_TEST=do

src_test() {
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
