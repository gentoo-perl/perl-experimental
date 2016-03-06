# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=LEONT
MODULE_VERSION=0.006
inherit perl-module

DESCRIPTION='Find the path to your perl'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.30 ( 6.300.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.30
}
perl_meta_runtime() {
	# Carp
	# echo virtual/perl-Carp
	# Cwd
	echo virtual/perl-File-Spec
	# Exporter 5.57 ( 5.570.0 )
	echo \>=virtual/perl-Exporter-5.570.0
	# ExtUtils::Config 0.007 ( 0.7.0 )
	echo \>=dev-perl/ExtUtils-Config-0.7.0
	# File::Basename
	# echo dev-lang/perl
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# IPC::Open2
	# echo dev-lang/perl
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	# echo dev-lang/perl
	# warnings
	# echo dev-lang/perl
}
perl_meta_test() {
	# Capture::Tiny
	echo dev-perl/Capture-Tiny
	# Config
	#echo unresolved
	# File::Find
	# echo dev-lang/perl
	# File::Temp
	echo virtual/perl-File-Temp
	# Test::More
	echo virtual/perl-Test-Simple
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_runtime)
	test? ( $(perl_meta_test) )
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do parallel"
