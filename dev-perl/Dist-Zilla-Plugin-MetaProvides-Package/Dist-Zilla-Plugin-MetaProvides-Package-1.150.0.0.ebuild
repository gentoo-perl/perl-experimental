# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=1.15000000
inherit perl-module

DESCRIPTION='Extract namespaces/version from traditional packages for provides'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.4007 ( 0.400.700 )
	echo \>=virtual/perl-Module-Build-0.400.700
}
perl_meta_build() {
	# Module::Build 0.4007 ( 0.400.700 )
	echo \>=virtual/perl-Module-Build-0.400.700
}
perl_meta_runtime() {
	# Data::Dump 1.16 ( 1.160.0 )
	echo \>=dev-perl/Data-Dump-1.160.0
	# Dist::Zilla::MetaProvides::ProvideRecord 1.14000000 ( 1.140.0.0 )
	echo \>=dev-perl/Dist-Zilla-Plugin-MetaProvides-1.140.0.0
	# Dist::Zilla::Plugin::FinderCode
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Plugin::MetaProvides 1.15000000 ( 1.150.0.0 )
	echo \>=dev-perl/Dist-Zilla-Plugin-MetaProvides-1.150.0.0
	# Dist::Zilla::Role::MetaProvider::Provider
	echo dev-perl/Dist-Zilla-Plugin-MetaProvides
	# IO::String
	echo dev-perl/IO-String
	# Module::Metadata 1.000005 ( 1.0.5 )
	echo \>=virtual/perl-Module-Metadata-1.0.5
	# Moose
	echo dev-perl/Moose
	# Moose::Autobox
	echo dev-perl/Moose-Autobox
	# MooseX::LazyRequire
	echo dev-perl/MooseX-LazyRequire
	# MooseX::Types::Moose
	echo dev-perl/MooseX-Types
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	# echo dev-lang/perl
	# warnings
	# echo dev-lang/perl
}
perl_meta_test() {
	# Dist::Zilla::Util::Test::KENTNL 0.01000011 ( 0.10.0.110 )
	echo \>=dev-perl/Dist-Zilla-Util-Test-KENTNL-0.10.0.110
	# File::Spec
	echo virtual/perl-File-Spec
	# IO::Handle
	echo virtual/perl-IO
	# IPC::Open3
	# echo dev-lang/perl
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::Moose
	echo dev-perl/Moose
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
