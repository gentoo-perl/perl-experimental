# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.04
inherit perl-module

DESCRIPTION='Perl interface to Janrain'\''s RPX service'
LICENSE=" BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=virtual/perl-Module-Build-0.36.01
}
perl_meta_build() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=virtual/perl-Module-Build-0.36.01
}
perl_meta_runtime() {
	# JSON::Any
	echo dev-perl/JSON-Any
	# LWP::UserAgent
	echo dev-perl/libwww-perl
	# Moose
	echo dev-perl/Moose
	# Throwable::Error
	echo dev-perl/Throwable
	# Throwable::X
	echo dev-perl/Throwable-X
	# URI
	echo dev-perl/URI
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Data::Dump
	echo dev-perl/Data-Dump
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
	# mocked
	echo dev-perl/mocked
	# unmocked
	echo dev-perl/mocked
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
