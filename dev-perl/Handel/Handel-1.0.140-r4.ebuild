# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=CLACO
MODULE_VERSION=1.00014
inherit perl-module

DESCRIPTION='A cart/order/checkout framework with AxKit/TT/Catalyst support'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
perl_meta_configure() {
	# ExtUtils::MakeMaker 6.62 ( 6.620.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.620.0
}
perl_meta_build() {
	# ExtUtils::MakeMaker 6.62 ( 6.620.0 )
	echo \>=virtual/perl-ExtUtils-MakeMaker-6.620.0
	# Test::More 0.94 ( 0.940.0 )
	echo \>=virtual/perl-Test-Simple-0.94
}
perl_meta_runtime() {
	# Carp
	# echo dev-perl/Carp
	# Class::Accessor::Grouped 0.10006 ( 0.100.60 )
	echo \>=dev-perl/Class-Accessor-Grouped-0.100.60
	# Class::ISA 0.36 ( 0.360.0 )
	echo \>=dev-perl/Class-ISA-0.36
	# Class::Inspector 1.24 ( 1.240.0 )
	echo \>=dev-perl/Class-Inspector-1.240.0
	# Clone 0.31 ( 0.310.0 )
	echo \>=dev-perl/Clone-0.310.0
	# DBD::SQLite 1.29 ( 1.290.0 )
	echo \>=dev-perl/DBD-SQLite-1.290.0
	# DBIx::Class 0.08123 ( 0.81.230 )
	echo \>=dev-perl/DBIx-Class-0.81.230
	# DBIx::Class::UUIDColumns 0.02005 ( 0.20.50 )
	echo \>=dev-perl/DBIx-Class-UUIDColumns-0.20.50
	# DBIx::Class::Validation 0.02005 ( 0.20.50 )
	echo \>=dev-perl/DBIx-Class-Validation-0.20.50
	# Data::Currency 0.04002 ( 0.40.20 )
	echo \>=dev-perl/Data-Currency-0.40.20
	# DateTime 0.61 ( 0.610.0 )
	echo \>=dev-perl/DateTime-0.610.0
	# DateTime::Format::MySQL 0.04 ( 0.40.0 )
	echo \>=dev-perl/DateTime-Format-MySQL-0.40.0
	# Error 0.17016 ( 0.170.160 )
	echo \>=dev-perl/Error-0.170.160
	# File::Path 2.08 ( 2.80.0 )
	echo \>=virtual/perl-File-Path-2.08
	# File::Spec::Functions 3.3 ( 3.300.0 )
	echo \>=virtual/perl-File-Spec-3.30
	# FileHandle 2.01 ( 2.10.0 )
	echo \>=dev-lang/perl-5.8.1
	# Finance::Currency::Convert::WebserviceX 0.07001 ( 0.70.10 )
	echo \>=dev-perl/Finance-Currency-Convert-WebserviceX-0.70.10
	# FormValidator::Simple 0.28 ( 0.280.0 )
	echo \>=dev-perl/FormValidator-Simple-0.280.0
	# Getopt::Long 2.38 ( 2.380.0 )
	echo \>=virtual/perl-Getopt-Long-2.380.0
	# Locale::Currency 2.07 ( 2.70.0 )
	echo \>=dev-perl/Locale-Codes-2.70.0
	# Locale::Currency::Format 1.28 ( 1.280.0 )
	echo \>=dev-perl/Locale-Currency-Format-1.280.0
	# Locale::Maketext 1.13 ( 1.130.0 )
	echo \>=virtual/perl-Locale-Maketext-1.130.0
	# Module::Pluggable 3.9 ( 3.900.0 )
	echo \>=dev-perl/Module-Pluggable-3.900.0
	# Module::Starter 1.54 ( 1.540.0 )
	echo \>=dev-perl/Module-Starter-1.540.0
	# NEXT 0.64 ( 0.640.0 )
	echo \>=virtual/perl-NEXT-0.640.0
	# Pod::Usage 1.36 ( 1.360.0 )
	echo \>=virtual/perl-Pod-Parser-1.360.0
	# SQL::Translator 0.11006 ( 0.110.60 )
	echo \>=dev-perl/SQL-Translator-0.110.60
	# Scalar::Util 1.22 ( 1.220.0 )
	echo \>=virtual/perl-Scalar-List-Utils-1.220.0
	# Tie::Hash 1.03 ( 1.30.0 )
	echo \>=dev-lang/perl-5.8.9
	# YAML 0.71 ( 0.710.0 )
	echo \>=dev-perl/yaml-0.710.0
	# perl v5.8.1 ( 5.8.1 )
	echo \>=dev-lang/perl-5.8.1
}
DEPEND="
	$(perl_meta_configure)
	$(perl_meta_build)
	$(perl_meta_runtime)
"
RDEPEND="
	$(perl_meta_runtime)
"
SRC_TEST="do"
