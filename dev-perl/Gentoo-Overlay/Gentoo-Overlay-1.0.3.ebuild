# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=1.0.3
inherit perl-module

DESCRIPTION='Tools for working with Gentoo Overlays'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.4003 ( 0.400.300 )
	echo \>=dev-perl/Module-Build-0.400.300
}
perl_meta_build() {
	# Module::Build 0.4003 ( 0.400.300 )
	echo \>=dev-perl/Module-Build-0.400.300
}
perl_meta_runtime() {
	# Carp
	# echo dev-lang/perl
	# Data::Dump
	echo dev-perl/Data-Dump
	# Moose
	echo dev-perl/Moose
	# MooseX::ClassAttribute
	echo dev-perl/MooseX-ClassAttribute
	# MooseX::Has::Sugar
	echo dev-perl/MooseX-Has-Sugar
	# MooseX::OneArgNew
	echo dev-perl/MooseX-OneArgNew
	# MooseX::Types
	echo dev-perl/MooseX-Types
	# MooseX::Types::Moose
	echo dev-perl/MooseX-Types
	# MooseX::Types::Path::Tiny
	echo dev-perl/MooseX-Types-Path-Tiny
	# Readonly
	echo dev-perl/Readonly
	# Role::HasMessage::Errf
	echo dev-perl/Role-HasMessage
	# Role::Identifiable::HasIdent
	echo dev-perl/Role-Identifiable
	# Role::Identifiable::HasTags
	echo dev-perl/Role-Identifiable
	# StackTrace::Auto
	echo dev-perl/Throwable
	# Sub::Exporter
	echo dev-perl/Sub-Exporter
	# Throwable
	echo dev-perl/Throwable
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
	# overload
	echo dev-lang/perl
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
	# FindBin
	echo dev-lang/perl
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::More 0.98 ( 0.980.0 )
	echo \>=virtual/perl-Test-Simple-0.980.0
	# Test::Output
	echo dev-perl/Test-Output
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
