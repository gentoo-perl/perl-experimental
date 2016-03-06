# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=DHOSS
MODULE_VERSION=0.33
inherit perl-module

DESCRIPTION='Send Email from Catalyst'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::Requires
	echo dev-perl/Test-Requires
}
perl_meta_runtime() {
	# Authen::SASL 2.13 ( 2.130.0 )
	echo \>=dev-perl/Authen-SASL-2.130.0
	# Catalyst 5.7 ( 5.700.0 )
	echo \>=dev-perl/Catalyst-Runtime-5.700.0
	# Email::MIME 1.859 ( 1.859.0 )
	echo \>=dev-perl/Email-MIME-1.859.0
	# Email::MIME::Creator 1.455 ( 1.455.0 )
	echo \>=dev-perl/Email-MIME-1.455.0
	# Email::Sender::Simple 0.100110 ( 0.100.110 )
	echo \>=dev-perl/Email-Sender-0.100.110
	# MIME::Base64 3.08 ( 3.80.0 )
	echo \>=virtual/perl-MIME-Base64-3.08
	# Moose 0.93 ( 0.930.0 )
	echo \>=dev-perl/Moose-0.930.0
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.880.0
	# parent 0.223 ( 0.223.0 )
	echo \>=virtual/perl-parent-0.223
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
