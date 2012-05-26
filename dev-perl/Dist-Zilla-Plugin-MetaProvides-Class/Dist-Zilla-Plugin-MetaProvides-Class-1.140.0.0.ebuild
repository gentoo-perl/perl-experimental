# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
MODULE_VERSION=1.14000000
inherit perl-module

DESCRIPTION='Scans Dist::Zilla'\''s .pm files and tries to identify classes using Class::Discover.'
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
	# Class::Discover
	echo dev-perl/Class-Discover
	# Dist::Zilla::MetaProvides::ProvideRecord 1.14000000 ( 1.140.0.0 )
	echo \>=dev-perl/Dist-Zilla-Plugin-MetaProvides-1.140.0.0
	# Dist::Zilla::Plugin::MetaProvides 1.12044806 ( 1.120.448.60 )
	echo \>=dev-perl/Dist-Zilla-Plugin-MetaProvides-1.120.448.60
	# Dist::Zilla::Role::MetaProvider::Provider
	echo dev-perl/Dist-Zilla-Plugin-MetaProvides
	# Moose
	echo dev-perl/Moose
	# Moose::Autobox
	echo dev-perl/Moose-Autobox
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
	# Dist::Zilla::Util::Test::KENTNL 0.01000011 ( 0.10.0.110 )
	echo \>=dev-perl/Dist-Zilla-Util-Test-KENTNL-0.10.0.110
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# MooseX::Declare
	echo dev-perl/MooseX-Declare
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::Moose
	echo dev-perl/Moose
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
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
