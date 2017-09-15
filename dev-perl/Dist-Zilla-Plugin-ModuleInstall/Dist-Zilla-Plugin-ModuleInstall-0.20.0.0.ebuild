# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.02000000
inherit perl-module

DESCRIPTION='Build Module::Install based Distributions with Dist::Zilla'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.42 ( 6.420.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.42
}
perl_meta_runtime() {
	# Config
	#echo unresolved
	# Dist::Zilla::File::InMemory
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Plugin::MakeMaker::Runner
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::BuildRunner
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::InstallTool
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::PrereqSource
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::Tempdir 0.01027622 ( 0.10.276.220 )
	echo \>=dev-perl/Dist-Zilla-Role-Tempdir-0.10.276.220
	# Dist::Zilla::Role::TestRunner
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::TextTemplate
	echo dev-perl/Dist-Zilla
	# Module::Install 0.90 ( 0.900.0 )
	echo \>=dev-perl/Module-Install-0.900.0
	# Moose 0.92 ( 0.920.0 )
	echo \>=dev-perl/Moose-0.920.0
	# Moose::Autobox 0.10 ( 0.100.0 )
	echo \>=dev-perl/Moose-Autobox-0.100.0
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
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
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
SRC_TEST="do"
