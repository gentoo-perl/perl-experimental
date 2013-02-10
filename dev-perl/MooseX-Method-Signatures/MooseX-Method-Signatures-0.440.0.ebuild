# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.44
inherit perl-module

DESCRIPTION='Method declarations with type constraints and no source filter'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# B::Hooks::EndOfScope 0.10 ( 0.100.0 )
	echo \>=dev-perl/B-Hooks-EndOfScope-0.100.0
	# Carp
	echo dev-lang/perl
	# Context::Preserve
	echo dev-perl/Context-Preserve
	# Devel::Declare 0.005011 ( 0.5.11 )
	echo \>=dev-perl/Devel-Declare-0.5.11
	# Devel::Declare::Context::Simple
	echo dev-perl/Devel-Declare
	# Eval::Closure
	echo dev-perl/Eval-Closure
	# Module::Runtime 0.012 ( 0.12.0 )
	echo \>=dev-perl/Module-Runtime-0.12.0
	# Moose 0.89 ( 0.890.0 )
	echo \>=dev-perl/Moose-0.890.0
	# Moose::Meta::Class
	echo dev-perl/Moose
	# Moose::Meta::Method
	echo dev-perl/Moose
	# Moose::Util
	echo dev-perl/Moose
	# Moose::Util::TypeConstraints
	echo dev-perl/Moose
	# MooseX::LazyRequire 0.06 ( 0.60.0 )
	echo \>=dev-perl/MooseX-LazyRequire-0.60.0
	# MooseX::Meta::TypeConstraint::ForceCoercion
	echo dev-perl/MooseX-Meta-TypeConstraint-ForceCoercion
	# MooseX::Types 0.35 ( 0.350.0 )
	echo \>=dev-perl/MooseX-Types-0.350.0
	# MooseX::Types::Moose 0.19 ( 0.190.0 )
	echo \>=dev-perl/MooseX-Types-0.190.0
	# MooseX::Types::Structured 0.24 ( 0.240.0 )
	echo \>=dev-perl/MooseX-Types-Structured-0.240.0
	# MooseX::Types::Util
	echo dev-perl/MooseX-Types
	# Parse::Method::Signatures 1.003014 ( 1.3.14 )
	echo \>=dev-perl/Parse-Method-Signatures-1.3.14
	# Parse::Method::Signatures::Param::Named
	echo dev-perl/Parse-Method-Signatures
	# Parse::Method::Signatures::Param::Placeholder
	echo dev-perl/Parse-Method-Signatures
	# Parse::Method::Signatures::TypeConstraint
	echo dev-perl/Parse-Method-Signatures
	# Parse::Method::Signatures::Types
	echo dev-perl/Parse-Method-Signatures
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Sub::Name
	echo dev-perl/Sub-Name
	# Task::Weaken
	echo dev-perl/Task-Weaken
	# Text::Balanced
	echo virtual/perl-Text-Balanced
	# aliased
	echo dev-perl/aliased
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
	# Data::Dumper
	echo virtual/perl-Data-Dumper
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# FindBin
	echo dev-lang/perl
	# Moose::Role
	echo dev-perl/Moose
	# Test::CheckDeps 0.002 ( 0.2.0 )
	echo \>=dev-perl/Test-CheckDeps-0.2.0
	# Test::Deep
	echo dev-perl/Test-Deep
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::Moose
	echo dev-perl/Moose
	# Test::More 0.89 ( 0.890.0 )
	echo \>=virtual/perl-Test-Simple-0.89
	# attributes
	echo dev-lang/perl
	# metaclass
	echo dev-perl/Moose
	# namespace::clean
	echo dev-perl/namespace-clean
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
