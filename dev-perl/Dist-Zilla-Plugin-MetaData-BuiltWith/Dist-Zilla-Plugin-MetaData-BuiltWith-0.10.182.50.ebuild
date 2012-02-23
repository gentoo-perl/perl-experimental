# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.01018205
inherit perl-module

DESCRIPTION='Report what versions of things your distribution was built against'
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
	# Dist::Zilla::Role::ConfigDumper 4.101540 ( 4.101.540 )
	echo \>=dev-perl/Dist-Zilla-4.101.540
	# Dist::Zilla::Role::MetaProvider
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Util::EmulatePhase 0.01000101 ( 0.10.1.10 )
	echo \>=dev-perl/Dist-Zilla-Util-EmulatePhase-0.10.1.10
	# Hash::Merge::Simple
	echo dev-perl/Hash-Merge-Simple
	# Moose
	echo dev-perl/Moose
	# Moose::Autobox
	echo dev-perl/Moose-Autobox
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
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
