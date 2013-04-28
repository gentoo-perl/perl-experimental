# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=RSRCHBOY
MODULE_VERSION=0.019
inherit perl-module

DESCRIPTION='Shorthand for common attribute options'
LICENSE=" LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.300.0
}
perl_meta_runtime() {
	# Moose
	echo dev-perl/Moose
	# Moose::Exporter
	echo dev-perl/Moose
	# Moose::Util::MetaRole
	echo dev-perl/Moose
	# Moose::Util::TypeConstraints
	echo dev-perl/Moose
	# MooseX::CoercePerAttribute 0.802 ( 0.802.0 )
	echo \>=dev-perl/MooseX-CoercePerAttribute-0.802.0
	# MooseX::Role::Parameterized
	echo dev-perl/MooseX-Role-Parameterized
	# MooseX::Types::Common::String
	echo dev-perl/MooseX-Types-Common
	# MooseX::Types::Moose
	echo dev-perl/MooseX-Types
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
	# Moose::Role
	echo dev-perl/Moose
	# Moose::Util
	echo dev-perl/Moose
	# MooseX::Types::Path::Class
	echo dev-perl/MooseX-Types-Path-Class
	# Path::Class
	echo dev-perl/Path-Class
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::Moose
	echo dev-perl/Moose
	# Test::Moose::More 0.018 ( 0.18.0 )
	echo \>=dev-perl/Test-Moose-More-0.18.0
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.880.0
	# aliased
	echo dev-perl/aliased
	# constant
	# echo virtual/perl-constant
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
