# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=BOBTFISH
MODULE_VERSION=1.3
inherit perl-module

DESCRIPTION='Unicode aware Catalyst'
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
	# HTTP::Status
	echo dev-perl/HTTP-Message
	# IO::Scalar
	echo dev-perl/IO-stringy
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
}
perl_meta_runtime() {
	# Catalyst 5.80 ( 5.800.0 )
	echo \>=dev-perl/Catalyst-Runtime-5.800.0
	# Class::Data::Inheritable
	echo dev-perl/Class-Data-Inheritable
	# Encode 2.21 ( 2.210.0 )
	echo \>=virtual/perl-Encode-2.21
	# LWP 5.837 ( 5.837.0 )
	echo \>=dev-perl/libwww-perl-5.837.0
	# Try::Tiny
	echo dev-perl/Try-Tiny
	# URI 1.36 ( 1.360.0 )
	echo \>=dev-perl/URI-1.36
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
