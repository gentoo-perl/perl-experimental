# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=2.000000
inherit perl-module

DESCRIPTION='Generating and Populating '\''provides'\'' in your META.yml'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test +fromfile +package +class +metanoindex"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Dist::Zilla::Role::MetaProvider
	echo dev-perl/Dist-Zilla
	# Hash::Merge::Simple
	echo dev-perl/Hash-Merge-Simple
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
	# perl 5.008 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
	# strict
	echo dev-lang/perl
	# utf8
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Dist::Zilla::Util::Test::KENTNL 0.01000004 ( 0.10.0.40 )
	echo \>=dev-perl/Dist-Zilla-Util-Test-KENTNL-0.10.0.40
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# List::Util
	echo virtual/perl-Scalar-List-Utils
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
	# lib
	# echo virtual/perl-lib
	# version
	echo virtual/perl-version
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
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
