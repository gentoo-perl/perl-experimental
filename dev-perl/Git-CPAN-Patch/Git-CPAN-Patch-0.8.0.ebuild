# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=YANICK
MODULE_VERSION=0.8.0
inherit perl-module

DESCRIPTION='Patch CPAN modules using Git'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
perl_meta_configure() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=virtual/perl-Module-Build-0.36.01
}
perl_meta_build() {
	# Module::Build 0.3601 ( 0.360.100 )
	echo \>=virtual/perl-Module-Build-0.36.01
}
perl_meta_runtime() {
	# Archive::Extract
	echo virtual/perl-Archive-Extract
	# BackPAN::Index
	echo dev-perl/BackPAN-Index
	# CLASS
	echo dev-perl/CLASS
	# CPANPLUS
	echo virtual/perl-CPANPLUS
	# Cwd
	echo virtual/perl-File-Spec
	# DateTime::Format::W3CDTF
	echo dev-perl/DateTime-Format-W3CDTF
	# File::Basename
	echo dev-lang/perl
	# File::Find
	echo dev-lang/perl
	# File::Path
	echo virtual/perl-File-Path
	# File::Spec::Functions
	echo virtual/perl-File-Spec
	# File::Temp
	echo virtual/perl-File-Temp
	# File::chdir
	echo dev-perl/File-chdir
	# File::chmod
	echo dev-perl/File-chmod
	# Getopt::Long
	echo virtual/perl-Getopt-Long
	# Git::Repository
	echo dev-perl/Git-Repository
	# LWP::UserAgent
	echo dev-perl/libwww-perl
	# MetaCPAN::API
	echo dev-perl/MetaCPAN-API
	# Method::Signatures
	echo dev-perl/Method-Signatures
	# Moose
	echo dev-perl/Moose
	# MooseX::App::Cmd
	echo dev-perl/MooseX-App-Cmd
	# MooseX::App::Cmd::Command
	echo dev-perl/MooseX-App-Cmd
	# MooseX::SemiAffordanceAccessor
	echo dev-perl/MooseX-SemiAffordanceAccessor
	# Pod::Usage
	echo virtual/perl-PodParser
	# autodie
	echo dev-perl/autodie
	# perl v5.10.0 ( 5.10.0 )
	echo \>=dev-lang/perl-5.10.0
	# strict
	echo dev-lang/perl
	# version
	echo virtual/perl-version
	# warnings
	echo dev-lang/perl
}
perl_meta_test() {
	# Carp
	# echo virtual/perl-Carp
	# Scalar::Util
	echo virtual/perl-Scalar-List-Utils
	# Test::Compile
	echo dev-perl/Test-Compile
	# Test::More 0.94 ( 0.940.0 )
	echo \>=virtual/perl-Test-Simple-0.94
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
