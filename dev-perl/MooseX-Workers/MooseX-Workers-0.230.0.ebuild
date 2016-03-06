# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=RKITOVER
MODULE_VERSION=0.23
inherit perl-module

DESCRIPTION='Simple sub-process management for asynchronous tasks'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Moose
	echo dev-perl/Moose
	# Moose::Role
	echo dev-perl/Moose
	# POE
	echo dev-perl/POE
	# POE::Wheel::Run
	echo dev-perl/POE
	# Package::Stash
	echo dev-perl/Package-Stash
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Try::Tiny
	echo dev-perl/Try-Tiny
	# overload
	echo dev-lang/perl
}
perl_meta_test() {
	# DateTime
	echo dev-perl/DateTime
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# POE::Filter::Line
	echo dev-perl/POE
	# POE::Filter::Reference
	echo dev-perl/POE
	# Test::More
	echo virtual/perl-Test-Simple
	# strict
	echo dev-lang/perl
	# warnings
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
SRC_TEST="do"
