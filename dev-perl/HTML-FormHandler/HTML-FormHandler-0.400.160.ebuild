# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=GSHANK
MODULE_VERSION=0.40016
inherit perl-module

DESCRIPTION='HTML forms using Moose'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
	# File::ShareDir::Install 0.03 ( 0.30.0 )
	echo \>=dev-perl/File-ShareDir-Install-0.30.0
}
perl_meta_runtime() {
	# Carp
	echo dev-lang/perl
	# Class::Load 0.06 ( 0.60.0 )
	echo \>=dev-perl/Class-Load-0.06
	# Data::Clone
	echo dev-perl/Data-Clone
	# DateTime
	echo dev-perl/DateTime
	# DateTime::Format::Strptime
	echo dev-perl/DateTime-Format-Strptime
	# Email::Valid
	echo dev-perl/Email-Valid
	# File::ShareDir
	echo dev-perl/File-ShareDir
	# File::Spec
	echo virtual/perl-File-Spec
	# HTML::TreeBuilder 3.23 ( 3.230.0 )
	echo \>=dev-perl/HTML-Tree-3.230.0
	# Locale::Maketext 1.09 ( 1.90.0 )
	echo \>=virtual/perl-locale-maketext-1.09
	# Moose 2.0007 ( 2.0.700 )
	echo \>=dev-perl/Moose-2.0.700
	# MooseX::Getopt 0.16 ( 0.160.0 )
	echo \>=dev-perl/MooseX-Getopt-0.160.0
	# MooseX::Types 0.20 ( 0.200.0 )
	echo \>=dev-perl/MooseX-Types-0.200.0
	# MooseX::Types::Common
	echo dev-perl/MooseX-Types-Common
	# MooseX::Types::LoadableClass 0.006 ( 0.6.0 )
	echo \>=dev-perl/MooseX-Types-LoadableClass-0.6.0
	# Sub::Exporter
	echo dev-perl/Sub-Exporter
	# Sub::Name
	echo dev-perl/Sub-Name
	# Try::Tiny
	echo dev-perl/Try-Tiny
	# aliased
	echo dev-perl/aliased
	# namespace::autoclean 0.09 ( 0.90.0 )
	echo \>=dev-perl/namespace-autoclean-0.90.0
}
perl_meta_test() {
	# PadWalker
	echo dev-perl/PadWalker
	# Test::Differences
	echo dev-perl/Test-Differences
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::Memory::Cycle 1.04 ( 1.40.0 )
	echo \>=dev-perl/Test-Memory-Cycle-1.40.0
	# Test::More 0.94 ( 0.940.0 )
	echo \>=virtual/perl-Test-Simple-0.94
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
