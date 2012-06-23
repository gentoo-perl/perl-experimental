# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.01053721
inherit perl-module

DESCRIPTION='Shell Out and collect the result in a DZ plug-in.'
LICENSE=" || ( Artistic GPL-2 )"
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
	# Carp
	# echo dev-perl/Carp
	# Digest::SHA 5.47 ( 5.470.0 )
	echo \>=virtual/perl-Digest-SHA-5.47
	# Dist::Zilla 2.0 ( 2.0.0 )
	echo \>=dev-perl/Dist-Zilla-2.0.0
	# Dist::Zilla::File::InMemory
	echo dev-perl/Dist-Zilla
	# File::Find::Rule 0.30 ( 0.300.0 )
	echo \>=dev-perl/File-Find-Rule-0.300.0
	# File::Slurp 9999.13 ( 9999.130.0 )
	echo \>=dev-perl/File-Slurp-9999.13
	# File::Tempdir 0.02 ( 0.20.0 )
	echo \>=dev-perl/File-Tempdir-0.20.0
	# File::chdir 0.1002 ( 0.100.200 )
	echo \>=dev-perl/File-chdir-0.100.200
	# Moose 0.92 ( 0.920.0 )
	echo \>=dev-perl/Moose-0.920
	# Moose::Role
	echo dev-perl/Moose
	# Path::Class 0.17 ( 0.170.0 )
	echo \>=dev-perl/Path-Class-0.17
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
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
	# Dist::Zilla
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::FileInjector
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::InstallTool
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Tester
	echo dev-perl/Dist-Zilla
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
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
