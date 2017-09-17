# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.01025802
inherit perl-module

DESCRIPTION='Nasty tools for probing < C<Dist::Zilla'\''s|Dist::Zilla >> internal state.'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.4002 ( 0.400.200 )
	echo \>=dev-perl/Module-Build-0.400.200
}
perl_meta_build() {
	# Module::Build 0.4002 ( 0.400.200 )
	echo \>=dev-perl/Module-Build-0.400.200
}
perl_meta_runtime() {
	# Carp
	# echo virtual/perl-Carp
	# Dist::Zilla::Prereqs
	echo dev-perl/Dist-Zilla
	# Hash::Merge::Simple
	echo dev-perl/Hash-Merge-Simple
	# Moose
	echo dev-perl/Moose
	# Moose::Autobox
	echo dev-perl/Moose-Autobox
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Sub::Exporter
	echo dev-perl/Sub-Exporter
	# Try::Tiny
	echo dev-perl/Try-Tiny
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
	# Dist::Zilla::Util::Test::KENTNL 0.01000510 ( 0.10.5.100 )
	echo \>=dev-perl/Dist-Zilla-Util-Test-KENTNL-0.10.5.100
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# Test::Fatal 0.003 ( 0.3.0 )
	echo \>=dev-perl/Test-Fatal-0.3.0
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
