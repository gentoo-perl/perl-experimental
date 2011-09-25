# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=ILMARI
MODULE_VERSION=0.37
inherit perl-module

DESCRIPTION="Method declarations with type constraints and no source filter"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_eumm_build() {
	#FindBin

	#Moose::Role
	echo \>=dev-perl/Moose-0.02
	#MooseX::Meta::Method::Authorized
	echo dev-perl/MooseX-AuthorizedMethods
	#MooseX::Meta::Method::Transactional
	echo dev-perl/MooseX-TransactionalMethods
	#Test::Exception
	echo dev-perl/Test-Exception
	#Test::Moose
	echo \>=dev-perl/Moose-0.25
	#Test::More 0.89
	echo virtual/perl-Test-Simple
	#Test::Pod
	echo dev-perl/Test-Pod
	#attributes

	#metaclass
	echo '|| (
		>=dev-perl/Moose-1.990.0
		( <dev-perl/Moose-1.990.0 >=dev-perl/Class-MOP-0.60.0 )
	)'
	#namespace::clean
	echo dev-perl/namespace-clean
}
perl_eumm_configure() {
	#strict

	#warnings

	#ExtUtils::MakeMaker 6.56
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.56
}
perl_eumm_prereq_pm() {
	# B::Hooks::EndOfScope 0.07
	echo \>=dev-perl/B-Hooks-EndOfScope-0.70.0
	# Carp

	# Context::Preserve
	echo dev-perl/Context-Preserve
	# Devel::Declare 0.005011
	echo \>=dev-perl/Devel-Declare-0.5.11
	# Devel::Declare::Context::Simple
	echo \>=dev-perl/Devel-Declare-0.3.0
	# Moose 0.89
	echo \>=dev-perl/Moose-0.89
	# Moose::Meta::Class
	echo \>=dev-perl/Moose-0.01
	# Moose::Meta::Method
	echo \>=dev-perl/Moose-0.16
	# Moose::Util
	echo \>=dev-perl/Moose-0.25
	# Moose::Util::TypeConstraints
	echo \>=dev-perl/Moose-0.01
	# MooseX::LazyRequire 0.06
	echo \>=dev-perl/MooseX-LazyRequire-0.60.0
	# MooseX::Meta::TypeConstraint::ForceCoercion
	echo dev-perl/MooseX-Meta-TypeConstraint-ForceCoercion
	# MooseX::Types 0.19
	echo \>=dev-perl/MooseX-Types-0.190.0
	# MooseX::Types::Moose 0.19
	echo \>=dev-perl/MooseX-Types-0.190.0
	# MooseX::Types::Structured 0.20
	echo \>=dev-perl/MooseX-Types-Structured-0.200.0
	# MooseX::Types::Util
	echo \>=dev-perl/MooseX-Types-0.10.0
	# Parse::Method::Signatures 1.003014
	echo \>=dev-perl/Parse-Method-Signatures-1.3.14
	# Parse::Method::Signatures::Param::Named
	echo \>=dev-perl/Parse-Method-Signatures-1.0.0
	# Parse::Method::Signatures::Param::Placeholder
	echo \>=dev-perl/Parse-Method-Signatures-1.0.0
	# Parse::Method::Signatures::TypeConstraint
	echo \>=dev-perl/Parse-Method-Signatures-1.1.0
	# Parse::Method::Signatures::Types
	echo \>=dev-perl/Parse-Method-Signatures-1.0.0
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
	# strict

	# warnings
}
RDEPEND="$(perl_eumm_prereq_pm)"
DEPEND="$(perl_eumm_configure)
		$(perl_eumm_build)
		$(perl_eumm_prereq_pm)"
SRC_TEST="do"
