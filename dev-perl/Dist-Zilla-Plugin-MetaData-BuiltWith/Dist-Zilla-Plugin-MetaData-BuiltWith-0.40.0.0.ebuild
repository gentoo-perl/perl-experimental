# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.04000000
inherit perl-module

DESCRIPTION='Report what versions of things your distribution was built against'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.4007 ( 0.400.700 )
	echo \>=dev-perl/Module-Build-0.400.700
}
perl_meta_build() {
	# Module::Build 0.4007 ( 0.400.700 )
	echo \>=dev-perl/Module-Build-0.400.700
}
perl_meta_runtime() {
	# Class::Load
	echo dev-perl/Class-Load
	# Dist::Zilla::Role::ConfigDumper 4.101540 ( 4.101.540 )
	echo \>=dev-perl/Dist-Zilla-4.101.540
	# Dist::Zilla::Role::MetaProvider
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Util::EmulatePhase 0.01000101 ( 0.10.1.10 )
	echo \>=dev-perl/Dist-Zilla-Util-EmulatePhase-0.10.1.10
	# Module::Data
	echo dev-perl/Module-Data
	# Moose 2.0 ( 2.0.0 )
	echo \>=dev-perl/Moose-2.0.0
	# MooseX::Types::Moose
	echo dev-perl/MooseX-Types
	# Readonly
	echo dev-perl/Readonly
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# File::Spec
	echo virtual/perl-File-Spec
	# IO::Handle
	echo virtual/perl-IO
	# IPC::Open3
	# echo dev-lang/perl
	# Test::More 0.98 ( 0.980.0 )
	echo \>=virtual/perl-Test-Simple-0.980.0
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
