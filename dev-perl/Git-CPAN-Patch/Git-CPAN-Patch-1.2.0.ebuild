# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=YANICK
MODULE_VERSION=1.2.0
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
	# CPAN::Meta
	echo virtual/perl-CPAN-Meta
	# CPAN::ParseDistribution
	echo dev-perl/CPAN-ParseDistribution
	# CPANPLUS
	echo virtual/perl-CPANPLUS
	# Cwd
	echo virtual/perl-File-Spec
	# DateTime
	echo dev-perl/DateTime
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
	# Git::Repository
	echo dev-perl/Git-Repository
	# LWP::Simple
	echo dev-perl/libwww-perl
	# LWP::UserAgent
	echo dev-perl/libwww-perl
	# List::Pairwise
	echo dev-perl/List-Pairwise
	# MetaCPAN::API
	echo dev-perl/MetaCPAN-API
	# Method::Signatures::Simple 1.07 ( 1.70.0 )
	echo \>=dev-perl/Method-Signatures-Simple-1.70.0
	# Moose
	echo dev-perl/Moose
	# Moose::Role
	echo dev-perl/Moose
	# MooseX::App 1.21 ( 1.210.0 )
	echo \>=dev-perl/MooseX-App-1.210.0
	# MooseX::App::Command
	echo dev-perl/MooseX-App
	# MooseX::App::Role
	echo dev-perl/MooseX-App
	# MooseX::Role::Tempdir
	echo dev-perl/MooseX-Role-Tempdir
	# MooseX::SemiAffordanceAccessor
	echo dev-perl/MooseX-SemiAffordanceAccessor
	# Path::Class
	echo dev-perl/Path-Class
	# Pod::Usage
	echo virtual/perl-Pod-Usage
	# autodie
	echo virtual/perl-autodie
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
SRC_TEST="do"
