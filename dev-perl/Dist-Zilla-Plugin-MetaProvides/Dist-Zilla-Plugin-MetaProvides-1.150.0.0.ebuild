# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=1.15000000
inherit perl-module

DESCRIPTION='Generating and Populating '\''provides'\'' in your META.yml'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test +fromfile +package +class +metanoindex"
perl_meta_configure() {
	# Module::Build 0.4007 ( 0.400.700 )
	echo \>=virtual/perl-Module-Build-0.400.700
}
perl_meta_build() {
	# Module::Build 0.4007 ( 0.400.700 )
	echo \>=virtual/perl-Module-Build-0.400.700
}
perl_meta_runtime() {
	echo "metanoindex? (
		>=dev-perl/Dist-Zilla-4.200.4
	)"
	# Dist::Zilla::Role::MetaProvider
	echo dev-perl/Dist-Zilla
	# Dist::Zilla::Util::EmulatePhase 0.01000101 ( 0.10.1.10 )
	echo \>=dev-perl/Dist-Zilla-Util-EmulatePhase-0.10.1.10
	# Moose
	echo dev-perl/Moose
	# Moose::Role
	echo dev-perl/Moose
	# MooseX::Types
	echo dev-perl/MooseX-Types
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
	# Carp
	# echo virtual/perl-Carp
	# Dist::Zilla::Util::Test::KENTNL 0.01000004 ( 0.10.0.40 )
	echo \>=dev-perl/Dist-Zilla-Util-Test-KENTNL-0.10.0.40
	# File::Temp
	echo virtual/perl-File-Temp
	# IO::Handle
	# echo virtual/perl-IO
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::More 0.98 ( 0.980.0 )
	echo \>=virtual/perl-Test-Simple-0.980.0
	# lib
	# echo virtual/perl-lib
}
PDEPEND="
	fromfile? (
		dev-perl/Dist-Zilla-Plugin-MetaProvides-FromFile
	)
	package? (
		dev-perl/Dist-Zilla-Plugin-MetaProvides-Package
		metanoindex? (
			>=dev-perl/Dist-Zilla-Plugin-MetaProvides-Package-1.110.444.40
		)
	)
	class? (
		dev-perl/Dist-Zilla-Plugin-MetaProvides-Class
		metanoindex? (
			>=dev-perl/Dist-Zilla-Plugin-MetaProvides-Class-1.110.444.60
		)
	)
"
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
