# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=JJNAPIORK
MODULE_VERSION=0.28
inherit perl-module

DESCRIPTION='MooseX::Types::Structured - Structured Type Constraints for Moose'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_build() {
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::More 0.94 ( 0.940.0 )
	echo \>=virtual/perl-Test-Simple-0.94
}
perl_meta_runtime() {
	# Devel::PartialDump 0.13 ( 0.130.0 )
	echo \>=dev-perl/Devel-PartialDump-0.130.0
	# Moose 1.08 ( 1.80.0 )
	echo \>=dev-perl/Moose-1.080
	# Moose::Meta::TypeCoercion
	echo dev-perl/Moose
	# Moose::Meta::TypeConstraint
	echo dev-perl/Moose
	# Moose::Meta::TypeConstraint::Parameterizable
	echo dev-perl/Moose
	# Moose::Util::TypeConstraints 1.06 ( 1.60.0 )
	echo \>=dev-perl/Moose-1.060
	# MooseX::Types 0.22 ( 0.220.0 )
	echo \>=dev-perl/MooseX-Types-0.220.0
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Sub::Exporter 0.982 ( 0.982.0 )
	echo \>=dev-perl/Sub-Exporter-0.982.0
	# overload
	echo dev-lang/perl
	# perl 5.008 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
}
perl_meta_test() {
	# Data::Dumper
	echo virtual/perl-Data-Dumper
	# DateTime
	echo dev-perl/DateTime
	# MooseX::Types::DateTime
	echo dev-perl/MooseX-Types-DateTime
	# MooseX::Types::Moose
	echo dev-perl/MooseX-Types
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::More
	echo virtual/perl-Test-Simple
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
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
