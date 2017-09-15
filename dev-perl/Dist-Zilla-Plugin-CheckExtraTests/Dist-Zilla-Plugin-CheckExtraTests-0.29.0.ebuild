# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=0.029
inherit perl-module

DESCRIPTION='check xt tests before release'
LICENSE=" Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.17 ( 6.170.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.170.0
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
}
perl_meta_runtime() {
	# App::Prove 3.00 ( 3.0.0 )
	echo \>=virtual/perl-Test-Harness-3.0.0
	# Archive::Tar
	echo virtual/perl-Archive-Tar
	# Dist::Zilla 4.3 ( 4.300.0 )
	echo \>=dev-perl/Dist-Zilla-4.300.0
	# Dist::Zilla::App
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::BeforeRelease
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::TestRunner
	echo dev-perl/Dist-Zilla
	# File::pushd
	echo dev-perl/File-pushd
	# Moose 2 ( 2.0.0 )
	echo \>=dev-perl/Moose-2.0.0
	# Path::Iterator::Rule
	echo dev-perl/Path-Iterator-Rule
	# Path::Tiny 0.013 ( 0.13.0 )
	echo \>=dev-perl/Path-Tiny-0.13.0
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
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# File::Spec
	echo virtual/perl-File-Spec
	# Params::Util
	echo dev-perl/Params-Util
	# Sub::Exporter
	echo dev-perl/Sub-Exporter
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.880.0
	# Test::Requires
	echo dev-perl/Test-Requires
	# Try::Tiny
	echo dev-perl/Try-Tiny
	# lib
	# echo virtual/perl-lib
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
