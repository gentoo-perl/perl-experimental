# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=DROLSKY
MODULE_VERSION=0.21
inherit perl-module

DESCRIPTION='Watch for changes to files, cross-platform style'
LICENSE=" Artistic-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test inotify"
perl_inotify() {
	echo \>=dev-perl/Linux-Inotify2-1.200.0
}
perl_meta_configure() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=virtual/perl-Module-Build-0.36.01
}
perl_meta_build() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=virtual/perl-Module-Build-0.36.01
}
perl_meta_runtime() {
	echo "inotify? ( $(perl_inotify) )"
	# Carp
	# echo dev-perl/Carp
	# Class::Load
	echo dev-perl/Class-Load
	# File::Find
	echo dev-lang/perl
	# File::Spec
	echo virtual/perl-File-Spec
	# List::MoreUtils
	echo dev-perl/List-MoreUtils
	# Module::Pluggable::Object
	echo virtual/perl-Module-Pluggable
	# Moose
	echo dev-perl/Moose
	# Moose::Util::TypeConstraints
	echo dev-perl/Moose
	# MooseX::Params::Validate
	echo dev-perl/MooseX-Params-Validate
	# MooseX::SemiAffordanceAccessor
	echo dev-perl/MooseX-SemiAffordanceAccessor
	# Time::HiRes
	echo virtual/perl-Time-HiRes
	# namespace::autoclean
	echo dev-perl/namespace-autoclean
	# perl 5.010 ( 5.10.0 )
	echo \>=dev-lang/perl-5.10.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Data::Dumper
	echo virtual/perl-Data-Dumper
	# Exporter
	echo virtual/perl-Exporter
	# File::Path
	echo virtual/perl-File-Path
	# File::Temp
	echo virtual/perl-File-Temp
	# FindBin
	echo dev-lang/perl
	# Test::Exception
	echo dev-perl/Test-Exception
	# Test::More
	echo virtual/perl-Test-Simple
	# base
	# echo virtual/perl-base
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
