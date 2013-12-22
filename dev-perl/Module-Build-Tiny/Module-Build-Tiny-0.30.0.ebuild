# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=LEONT
MODULE_VERSION=0.030
inherit perl-mb-tiny

DESCRIPTION='A tiny replacement for Module::Build'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# CPAN::Meta
	echo virtual/perl-CPAN-Meta
	# Exporter 5.57 ( 5.570.0 )
	echo \>=virtual/perl-Exporter-5.570.0
	# ExtUtils::CBuilder
	echo virtual/perl-ExtUtils-CBuilder
	# ExtUtils::Config 0.003 ( 0.3.0 )
	echo \>=dev-perl/ExtUtils-Config-0.3.0
	# ExtUtils::Helpers 0.020 ( 0.20.0 )
	echo \>=dev-perl/ExtUtils-Helpers-0.20.0
	# ExtUtils::Install
	echo virtual/perl-ExtUtils-MakeMaker
	# ExtUtils::InstallPaths 0.002 ( 0.2.0 )
	echo \>=dev-perl/ExtUtils-InstallPaths-0.2.0
	# ExtUtils::ParseXS
	echo virtual/perl-ExtUtils-ParseXS
	# File::Basename
	echo dev-lang/perl
	# File::Find
	echo dev-lang/perl
	# File::Path
	echo virtual/perl-File-Path
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# Getopt::Long
	echo virtual/perl-Getopt-Long
	# JSON::PP 2 ( 2.0.0 )
	echo \>=virtual/perl-JSON-PP-2.0.0
	# Pod::Man
	echo virtual/perl-podlators
	# TAP::Harness 3.29 ( 3.290.0 )
	echo \>=virtual/perl-Test-Harness-3.290.0
	# TAP::Harness::Env
	echo virtual/perl-Test-Harness
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
}
perl_meta_runtime() {
	# CPAN::Meta
	echo virtual/perl-CPAN-Meta
	# Exporter 5.57 ( 5.570.0 )
	echo \>=virtual/perl-Exporter-5.570.0
	# ExtUtils::CBuilder
	echo virtual/perl-ExtUtils-CBuilder
	# ExtUtils::Config 0.003 ( 0.3.0 )
	echo \>=dev-perl/ExtUtils-Config-0.3.0
	# ExtUtils::Helpers 0.020 ( 0.20.0 )
	echo \>=dev-perl/ExtUtils-Helpers-0.20.0
	# ExtUtils::Install
	echo virtual/perl-ExtUtils-MakeMaker
	# ExtUtils::InstallPaths 0.002 ( 0.2.0 )
	echo \>=dev-perl/ExtUtils-InstallPaths-0.2.0
	# ExtUtils::ParseXS
	echo virtual/perl-ExtUtils-ParseXS
	# File::Basename
	echo dev-lang/perl
	# File::Find
	echo dev-lang/perl
	# File::Path
	echo virtual/perl-File-Path
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# Getopt::Long
	echo virtual/perl-Getopt-Long
	# JSON::PP 2 ( 2.0.0 )
	echo \>=virtual/perl-JSON-PP-2.0.0
	# Pod::Man
	echo virtual/perl-podlators
	# TAP::Harness 3.29 ( 3.290.0 )
	echo \>=virtual/perl-Test-Harness-3.290.0
	# TAP::Harness::Env
	echo virtual/perl-Test-Harness
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# strict
	echo dev-lang/perl
	# warnings
	echo dev-lang/perl
	# conflict local::lib 1.006008
	echo '!<dev-perl/local-lib-1.6.8'
}
perl_meta_test() {
	# Carp
	# echo virtual/perl-Carp
	# Cwd
	echo virtual/perl-File-Spec
	# Data::Dumper
	echo virtual/perl-Data-Dumper
	# File::Spec
	echo virtual/perl-File-Spec
	# File::Temp
	echo virtual/perl-File-Temp
	# IO::File
	echo virtual/perl-IO
	# IO::Handle
	echo virtual/perl-IO
	# IPC::Open2
	echo dev-lang/perl
	# IPC::Open3
	echo dev-lang/perl
	# Test::More 0.88 ( 0.880.0 )
	echo \>=virtual/perl-Test-Simple-0.88
	# XSLoader
	echo virtual/perl-XSLoader
	# blib
	echo dev-lang/perl
	# lib
	# echo virtual/perl-lib
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
