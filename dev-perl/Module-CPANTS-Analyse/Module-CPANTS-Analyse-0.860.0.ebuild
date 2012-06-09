# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=4
MODULE_AUTHOR=DAXIM
MODULE_VERSION=0.86
inherit perl-module

DESCRIPTION='Generate Kwalitee ratings for a distribution'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS=""
IUSE=""
perl_meta_configure() {
	# Module::Build 0.4 ( 0.400.0 )
	echo \>=virtual/perl-Module-Build-0.400.0
}
perl_meta_build() {
	# Cwd
	echo virtual/perl-File-Spec
	# Test::Deep
	echo dev-perl/Test-Deep
	# Test::More
	echo virtual/perl-Test-Simple
	# Test::NoWarnings
	echo dev-perl/Test-NoWarnings
	# Test::Warn 0.11 ( 0.110.0 )
	echo \>=dev-perl/Test-Warn-0.11
}
perl_meta_runtime() {
	# Archive::Any 0.06 ( 0.60.0 )
	echo \>=dev-perl/Archive-Any-0.60.0
	# Archive::Tar 1.48 ( 1.480.0 )
	echo \>=virtual/perl-Archive-Tar-1.48
	# Array::Diff 0.04 ( 0.40.0 )
	echo \>=dev-perl/Array-Diff-0.40.0
	# CPAN::DistnameInfo 0.06 ( 0.60.0 )
	echo \>=dev-perl/CPAN-DistnameInfo-0.60.0
	# Class::Accessor 0.19 ( 0.190.0 )
	echo \>=dev-perl/Class-Accessor-0.190.0
	# ExtUtils::Manifest
	echo virtual/perl-ExtUtils-Manifest
	# File::Find::Rule
	echo dev-perl/File-Find-Rule
	# File::Slurp
	echo dev-perl/File-Slurp
	# File::chdir
	echo dev-perl/File-chdir
	# IO::Capture 0.05 ( 0.50.0 )
	echo \>=dev-perl/IO-Capture-0.50.0
	# LWP::Simple
	echo dev-perl/libwww-perl
	# List::MoreUtils
	echo dev-perl/List-MoreUtils
	# Module::ExtractUse 0.18 ( 0.180.0 )
	echo \>=dev-perl/Module-ExtractUse-0.180.0
	# Module::Pluggable 2.96 ( 2.960.0 )
	echo \>=virtual/perl-Module-Pluggable-2.960.0
	# Module::Signature
	echo dev-perl/Module-Signature
	# Pod::Simple::Checker 2.02 ( 2.20.0 )
	echo \>=virtual/perl-Pod-Simple-2.20.0
	# Readonly
	echo dev-perl/Readonly
	# Set::Scalar
	echo dev-perl/set-scalar
	# Software::License 0.003 ( 0.3.0 )
	echo \>=dev-perl/Software-License-0.3.0
	# Test::CPAN::Meta::YAML::Version
	echo dev-perl/Test-CPAN-Meta-YAML
	# Text::CSV_XS 0.45 ( 0.450.0 )
	echo \>=dev-perl/Text-CSV_XS-0.450.0
	# YAML::Any
	echo dev-perl/yaml
	# perl 5.006 ( 5.6.0 )
	echo \>=dev-lang/perl-5.6.0
	# version 0.73 ( 0.730.0 )
	echo \>=virtual/perl-version-0.73
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="broken"
