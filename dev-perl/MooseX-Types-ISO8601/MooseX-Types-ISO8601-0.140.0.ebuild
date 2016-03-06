# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=ETHER
MODULE_VERSION=0.14
inherit perl-module

DESCRIPTION='ISO8601 date and duration string type constraints and coercions for Moose'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30.0
}
perl_meta_runtime() {
	# Class::Load
	echo dev-perl/Class-Load
	# DateTime 0.41 ( 0.410.0 )
	echo \>=dev-perl/DateTime-0.41
	# DateTime::Duration
	echo dev-perl/DateTime
	# DateTime::Format::Duration 1.03 ( 1.30.0 )
	echo \>=dev-perl/DateTime-Format-Duration-1.30.0
	# DateTime::Format::ISO8601
	echo dev-perl/DateTime-Format-ISO8601
	# DateTime::TimeZone
	echo dev-perl/DateTime-TimeZone
	# List::MoreUtils
	echo dev-perl/List-MoreUtils
	# Module::Runtime
	echo dev-perl/Module-Runtime
	# MooseX::Types 0.10 ( 0.100.0 )
	echo \>=dev-perl/MooseX-Types-0.100.0
	# MooseX::Types::DateTime 0.03 ( 0.30.0 )
	echo \>=dev-perl/MooseX-Types-DateTime-0.30.0
	# MooseX::Types::Moose
	echo dev-perl/MooseX-Types
	# Safe::Isa
	echo dev-perl/Safe-Isa
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Try::Tiny
	echo dev-perl/Try-Tiny
	# aliased
	echo dev-perl/aliased
	# namespace::autoclean 0.05 ( 0.50.0 )
	echo \>=dev-perl/namespace-autoclean-0.50.0
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# DateTime::Format::ISO8601
	echo dev-perl/DateTime-Format-ISO8601
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# FindBin
	echo dev-lang/perl
	# Moose
	echo dev-perl/Moose
	# Test::CheckDeps 0.002 ( 0.2.0 )
	echo \>=dev-perl/Test-CheckDeps-0.2.0
	# Test::Deep
	echo dev-perl/Test-Deep
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
	# Test::NoWarnings 1.04 ( 1.40.0 )
	echo \>=dev-perl/Test-NoWarnings-1.40.0
	# Test::Requires
	echo dev-perl/Test-Requires
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
