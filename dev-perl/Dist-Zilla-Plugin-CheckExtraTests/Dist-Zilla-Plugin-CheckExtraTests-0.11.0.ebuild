# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=0.011
inherit perl-module

DESCRIPTION='check xt tests before release'
LICENSE=" Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# App::Prove 3.00 ( 3.0.0 )
	echo \>=virtual/perl-Test-Harness-3.0
	# Dist::Zilla 4.3 ( 4.300.0 )
	echo \>=dev-perl/Dist-Zilla-4.300.0
	# Dist::Zilla::App
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::BeforeRelease
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::TestRunner
	echo dev-perl/Dist-Zilla
	# File::Temp
	echo virtual/perl-File-Temp
	# File::pushd
	echo dev-perl/File-pushd
	# Moose 0.99 ( 0.990.0 )
	echo \>=dev-perl/Moose-0.990.0
	# Moose::Autobox
	echo dev-perl/Moose-Autobox
	# Path::Iterator::Rule
	echo dev-perl/Path-Iterator-Rule
	# Path::Tiny
	echo dev-perl/Path-Tiny
	# namespace::autoclean 0.09 ( 0.90.0 )
	echo \>=dev-perl/namespace-autoclean-0.90.0
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Capture::Tiny
	echo dev-perl/Capture-Tiny
	# Dist::Zilla::App::Tester
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Tester
	echo dev-perl/Dist-Zilla
	# File::Find
	echo dev-lang/perl
	# Params::Util
	echo dev-perl/Params-Util
	# Sub::Exporter
	echo dev-perl/Sub-Exporter
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
	# Test::Requires
	echo dev-perl/Test-Requires
	# Try::Tiny
	echo dev-perl/Try-Tiny
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
