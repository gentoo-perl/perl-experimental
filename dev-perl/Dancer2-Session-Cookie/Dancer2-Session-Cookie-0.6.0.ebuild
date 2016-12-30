# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=YANICK
MODULE_VERSION=0.006
inherit perl-module

DESCRIPTION='Dancer 2 session storage in secure cookies'
LICENSE=" Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=dev-perl/Module-Build-0.360.100
}
perl_meta_build() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=dev-perl/Module-Build-0.360.100
}
perl_meta_runtime() {
	# Dancer2 0.140001 ( 0.140.1 )
	echo \>=dev-perl/Dancer2-0.140.1
	# Moo
	echo dev-perl/Moo
	# Session::Storage::Secure 0.010 ( 0.10.0 )
	echo \>=dev-perl/Session-Storage-Secure-0.10.0
	# perl 5.008001 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Dancer2 0.140001 ( 0.140.1 )
	echo \>=dev-perl/Dancer2-0.140.1
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Temp 0.22 ( 0.220.0 )
	echo \>=virtual/perl-File-Temp-0.220.0
	# HTTP::Date
	echo dev-perl/HTTP-Date
	# IO::Handle
	echo virtual/perl-IO
	# LWP::UserAgent
	echo dev-perl/libwww-perl
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.960.0
	# Test::TCP 1.30 ( 1.300.0 )
	echo \>=dev-perl/Test-TCP-1.300.0
	# YAML
	echo dev-perl/YAML
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
SRC_TEST="do parallel"
