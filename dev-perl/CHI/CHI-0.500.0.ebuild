# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=JSWARTZ
MODULE_VERSION=0.50
inherit perl-module

DESCRIPTION='Unified cache handling interface'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Carp::Assert 0.20 ( 0.200.0 )
	echo \>=dev-perl/Carp-Assert-0.200.0
	# Data::UUID
	echo dev-perl/Data-UUID
	# Digest::JHash
	echo dev-perl/Digest-JHash
	# Digest::MD5
	echo virtual/perl-Digest-MD5
	# File::Spec 0.80 ( 0.800.0 )
	echo \>=virtual/perl-File-Spec-0.80
	# Hash::MoreUtils
	echo dev-perl/Hash-MoreUtils
	# JSON
	echo dev-perl/JSON
	# List::MoreUtils 0.13 ( 0.130.0 )
	echo \>=dev-perl/List-MoreUtils-0.13
	# Log::Any 0.08 ( 0.80.0 )
	echo \>=dev-perl/Log-Any-0.80.0
	# Moose 0.66 ( 0.660.0 )
	echo \>=dev-perl/Moose-0.660
	# Storable
	echo virtual/perl-Storable
	# Task::Weaken
	echo dev-perl/Task-Weaken
	# Time::Duration 1.06 ( 1.60.0 )
	echo \>=dev-perl/Time-Duration-1.60.0
	# Time::Duration::Parse 0.03 ( 0.30.0 )
	echo \>=dev-perl/Time-Duration-Parse-0.30.0
	# Try::Tiny 0.05 ( 0.50.0 )
	echo \>=dev-perl/Try-Tiny-0.50.0
}
perl_meta_test() {
	# Date::Parse
	echo dev-perl/TimeDate
	# Test::Builder
	echo virtual/perl-Test-Simple
	# Test::Class
	echo dev-perl/Test-Class
	# Test::Deep
	echo dev-perl/Test-Deep
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::Warn
	echo dev-perl/Test-Warn
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
