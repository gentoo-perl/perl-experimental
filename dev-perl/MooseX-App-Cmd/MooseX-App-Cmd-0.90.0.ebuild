# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=MJGARDNER
MODULE_VERSION=0.09
inherit perl-module

DESCRIPTION='Mashes up MooseX::Getopt and App::Cmd'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_build() {
	# ExtUtils::MakeMaker
	echo virtual/perl-ExtUtils-MakeMaker
}
perl_meta_runtime() {
	# App::Cmd 0.3 ( 0.300.0 )
	echo \>=dev-perl/App-Cmd-0.300.0
	# App::Cmd::Command
	echo dev-perl/App-Cmd
	# English
	echo dev-lang/perl
	# File::Basename
	echo dev-lang/perl
	# Getopt::Long::Descriptive 0.091 ( 0.91.0 )
	echo \>=dev-perl/Getopt-Long-Descriptive-0.91.0
	# Moose 0.86 ( 0.860.0 )
	echo \>=dev-perl/Moose-0.860
	# Moose::Object
	echo dev-perl/Moose
	# MooseX::Getopt 0.18 ( 0.180.0 )
	echo \>=dev-perl/MooseX-Getopt-0.180.0
	# MooseX::Has::Options
	echo dev-perl/MooseX-Has-Options
	# MooseX::MarkAsMethods
	echo dev-perl/MooseX-MarkAsMethods
	# Test::use::ok
	echo dev-perl/Test-use-ok
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
}
perl_meta_test() {
	# Carp
	# echo virtual/perl-Carp
	# Data::Dumper
	echo virtual/perl-Data-Dumper
	# File::Find
	echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# MooseX::ConfigFromFile
	echo dev-perl/MooseX-ConfigFromFile
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Test::More 0.94 ( 0.940.0 )
	echo \>=virtual/perl-Test-Simple-0.94
	# Test::Output
	echo dev-perl/Test-Output
	# Test::Requires
	echo dev-perl/Test-Requires
	# YAML
	echo dev-perl/yaml
	# base
	# echo virtual/perl-base
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
