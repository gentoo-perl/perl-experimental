# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=0.005
inherit perl-module

DESCRIPTION='Dancer 2 session storage in secure cookies'
LICENSE=" Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.300.0
}
perl_meta_runtime() {
	# Dancer2 0.03 ( 0.30.0 )
	echo \>=dev-perl/Dancer2-0.30.0
	# Moo
	echo dev-perl/Moo
	# Session::Storage::Secure 0.007 ( 0.7.0 )
	echo \>=dev-perl/Session-Storage-Secure-0.7.0
	# perl 5.008001 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Dancer2
	echo dev-perl/Dancer2
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# File::Find
	echo dev-lang/perl
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Temp 0.22 ( 0.220.0 )
	echo \>=virtual/perl-File-Temp-0.220.0
	# HTTP::Date
	echo dev-perl/HTTP-Date
	# LWP::UserAgent
	echo dev-perl/libwww-perl
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.960.0
	# Test::TCP 1.30 ( 1.300.0 )
	echo \>=dev-perl/Test-TCP-1.300.0
	# YAML
	echo dev-perl/yaml
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
