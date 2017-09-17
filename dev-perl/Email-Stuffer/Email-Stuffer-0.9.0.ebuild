# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.009
inherit perl-module

DESCRIPTION='A more casual approach to creating and sending Email:: emails'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.300.0
}
perl_meta_runtime() {
	# Carp
	echo virtual/perl-Carp
	# Email::MIME
	echo dev-perl/Email-MIME
	# Email::Sender::Simple
	echo dev-perl/Email-Sender
	# Params::Util 1.05 ( 1.50.0 )
	echo \>=dev-perl/Params-Util-1.50.0
	# perl 5.005 ( 5.5.0 )
	echo \>=dev-lang/perl-5.5.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Email::Sender::Transport::Test 0.120000 ( 0.120.0 )
	echo \>=dev-perl/Email-Sender-0.120.0
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# Moo
	echo dev-perl/Moo
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.960.0
	# Test::Most
	echo dev-perl/Test-Most
	# utf8
	echo dev-lang/perl
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
