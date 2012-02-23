# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=KENTNL
MODULE_VERSION=1.11060209
inherit perl-module

DESCRIPTION='In the event nothing else works, pull in hand-crafted metadata from a specified file.'
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
	# Class::Load
	echo dev-perl/Class-Load
	# Config::INI::Reader
	echo dev-perl/Config-INI
	# Dist::Zilla::MetaProvides::ProvideRecord
	echo dev-perl/Dist-Zilla-Plugin-MetaProvides
	# Dist::Zilla::Plugin::MetaProvides 1.11034201 ( 1.110.342.10 )
	echo \>=dev-perl/Dist-Zilla-Plugin-MetaProvides-1.110.342.10
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
	# Dist::Zilla::App::Tester
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
