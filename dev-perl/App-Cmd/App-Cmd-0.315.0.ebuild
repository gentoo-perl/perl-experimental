# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.315
inherit perl-module

DESCRIPTION='write command line apps with less suffering'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Capture::Tiny 0.13 ( 0.130.0 )
	echo \>=dev-perl/Capture-Tiny-0.130.0
	# Carp
	echo dev-lang/perl
	# Class::Load 0.06 ( 0.60.0 )
	echo \>=dev-perl/Class-Load-0.06
	# Data::OptList
	echo dev-perl/Data-OptList
	# File::Basename
	echo dev-lang/perl
	# Getopt::Long::Descriptive 0.084 ( 0.84.0 )
	echo \>=dev-perl/Getopt-Long-Descriptive-0.84.0
	# IO::TieCombine
	echo dev-perl/IO-TieCombine
	# Module::Pluggable::Object
	echo virtual/perl-Module-Pluggable
	# String::RewritePrefix
	echo dev-perl/String-RewritePrefix
	# Sub::Exporter
	echo dev-perl/Sub-Exporter
	# Sub::Exporter::Util
	echo dev-perl/Sub-Exporter
	# Sub::Install
	echo dev-perl/Sub-Install
	# Text::Abbrev
	echo dev-lang/perl
	# constant
	# echo virtual/perl-constant
	# parent
	echo virtual/perl-parent
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
	# IPC::Cmd
	echo virtual/perl-IPC-Cmd
	# Test::Fatal
	echo dev-perl/Test-Fatal
	# Test::More 0.96 ( 0.960.0 )
	echo \>=virtual/perl-Test-Simple-0.96
	# base
	#echo virtual/perl-base
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
