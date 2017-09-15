# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.03000002
inherit perl-module

DESCRIPTION='Time-Relative versioning'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.4004 ( 0.400.400 )
	echo \>=dev-perl/Module-Build-0.400.400
}
perl_meta_build() {
	# Module::Build 0.4004 ( 0.400.400 )
	echo \>=dev-perl/Module-Build-0.400.400
}
perl_meta_runtime() {
	# DateTime 0.50 ( 0.500.0 )
	echo \>=dev-perl/DateTime-0.50
	# Dist::Zilla 2.10131 ( 2.101.310 )
	echo \>=dev-perl/Dist-Zilla-2.101.310
	# Dist::Zilla::Role::TextTemplate
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Role::VersionProvider
	echo dev-perl/Dist-Zilla
	# Moose 1.09 ( 1.90.0 )
	echo \>=dev-perl/Moose-1.90.0
	# MooseX::StrictConstructor 0.10 ( 0.100.0 )
	echo \>=dev-perl/MooseX-StrictConstructor-0.100.0
	# MooseX::Types::DateTime 0.05 ( 0.50.0 )
	echo \>=dev-perl/MooseX-Types-DateTime-0.50.0
	# MooseX::Types::Moose
	echo dev-perl/MooseX-Types
	# Readonly
	echo dev-perl/Readonly
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
	# Dist::Zilla::Plugin::GatherDir
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Tester
	echo dev-perl/Dist-Zilla
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
