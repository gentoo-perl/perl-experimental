# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=JQUELIN
MODULE_VERSION=1.120881
inherit perl-module

DESCRIPTION='common helper classes for mpd'

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=dev-perl/Module-Build-0.36.01
}
perl_meta_build() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=dev-perl/Module-Build-0.36.01
}
perl_meta_runtime() {
	# Moose 0.92 ( 0.920.0 )
	echo \>=dev-perl/Moose-0.920.0
	# Moose::Util::TypeConstraints
	echo dev-perl/Moose
	# MooseX::Has::Sugar
	echo dev-perl/MooseX-Has-Sugar
	# MooseX::Types::Moose
	echo dev-perl/MooseX-Types
	# Readonly
	echo dev-perl/Readonly
	# String::Formatter
	echo dev-perl/String-Formatter
	# base
	# echo virtual/perl-base
	# overload
	echo dev-lang/perl
	# perl 5.008 ( 5.8.0 )
	echo \>=dev-lang/perl-5.8.0
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
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
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
